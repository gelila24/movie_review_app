import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:movie_review_app/core/services/api/dio_client.dart';
import 'package:movie_review_app/core/services/api/network_exceptions.dart';
import 'package:movie_review_app/utils/enums.dart';
import 'package:movie_review_app/utils/functions.dart';

class ApiClient {
  late DioClient dioClient;
  final Dio dio;
  final Connectivity connectivity;
  Map<String, dynamic> defaultParams = {};

  ApiClient({
    required this.dio,
    required this.connectivity,
  }) {
    dioClient = DioClient(dio, connectivity: connectivity);
  }

  Future<Map<String, dynamic>> request({
    required RequestType requestType,
    bool requiresAuth = true,
    bool requiresDefaultParams = true,
    String? port,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    try {
      print('sent payload: $data');
      print("path: $path");
      print("queryParameters: ${removeNullValues(queryParameters ?? {})}");
      dynamic response;
      switch (requestType) {
        case RequestType.get:
          response = await dioClient.get(path,
              queryParameters: queryParameters != null
                  ? removeNullValues(queryParameters)
                  : null);
          break;
        case RequestType.post:
          response = await dioClient.post(path, data: data);
          break;
        case RequestType.patch:
          response = await dioClient.patch(path, data: data);
          break;
        case RequestType.delete:
          response = await dioClient.delete(path);
          break;
        case RequestType.put:
          response = await dioClient.put(path, data: data);
          break;
        default:
          throw "Request type not found.";
      }

      // print('response: $response');
      return (response is String) ? jsonDecode(response) : response;
    } on DioException catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      print('Api Error: $errorMessage');
      print("data ${e.response?.statusCode}");
      try {
        if (e.response?.statusCode == 400 || e.response?.statusCode == 404) {
          toast("Error", e.response?.data["message"] ?? "");
        }
      } catch (e) {
        log('error');
      }
      return Future.error(
          {'main': NetworkExceptions.getDioException(e), 'message': e});
      //return NetworkExceptions.getDioException(e);
    }
  }

  Future<Map<String, dynamic>> uploadFile(
      String file, Map<String, dynamic> extra, String path) async {
    String fileName = file.split('/').last;
    FormData formData = FormData.fromMap({
      "Poster": await MultipartFile.fromFile(file, filename: fileName),
      ...extra
    });
    print("request: post $path");
    var response = await dioClient.post(APIVersion.v2.value + path,
        data: formData,
        options: Options(headers: {"Content-Type": "multipart/form-data;"}));
    return (response is String) ? jsonDecode(response) : response;
  }

  // sends form data for single or multiple files
  Future<Map<String, dynamic>> sendFormData({
    required String fileFieldName,
    required Map<String, dynamic> formPayload,
    required String endPoint,
    String? port,
    File? file,
    List<File>? files,
  }) async {
    try {
      print("request: post $endPoint");
      print("formPayload: $formPayload");
      print("file: ${file?.path}");
      print("path: $endPoint");
      // For multiple files case
      if (files?.isNotEmpty ?? false) {
        List<MultipartFile> multipartFiles = [];
        for (File file in files!) {
          String? mimeType = lookupMimeType(file.path);
          List<String> splitMimeTypes = mimeType?.split('/') ?? [];

          final MultipartFile multipartFile = MultipartFile.fromFileSync(
              file.path,
              contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1]));

          multipartFiles.add(multipartFile);
        }

        formPayload[fileFieldName] = multipartFiles;
      } else if (file?.path.isNotEmpty ?? false) {
        // case for single file form data
        String? mimeType = lookupMimeType(file!.path);
        List<String> splitMimeTypes = mimeType?.split('/') ?? [];

        final MultipartFile multipartFile = MultipartFile.fromFileSync(
            file.path,
            contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1]));
        formPayload[fileFieldName] = multipartFile;
      }

      formPayload.addAll(defaultParams);
      print('form payload here: $formPayload');
      var formData = FormData.fromMap(formPayload);

      final response = await dioClient.post(endPoint, data: formData);
      print("response $response");
      // Iterable l = json.decode(jsonEncode(response));
      // return List<Files>.from(l.map((model) => Files.fromJson(model)).toList());

      return (response is String) ? jsonDecode(response) : response;
    } on DioException catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      print('Api Error: $errorMessage');
      print('Raw Error: ${e.response}');
      String error = "";

      try {
        error = e.response?.data['content'].toString() ?? "";
        if (error.isEmpty) error = e.response?.data['content'][0]['message'];
      } finally {
        if (error.isEmpty) error = "could_not_connect_try_again";
      }
      toast('error', error);
      return Future.error(
          {'main': NetworkExceptions.getDioException(e), 'message': error});
    }
  }
}
