import 'dart:developer';

import 'package:get_storage/get_storage.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/data/services/api/api_client.dart';
import 'package:movie_review_app/shared/enums.dart';

class AuthRepository {
  final ApiClient apiClient;
  final GetStorage storage = GetStorage();
  UserModel? _user;

  AuthRepository({required this.apiClient});

  Future<bool> register(String username, String email) async {
    try {
      UserModel temp = UserModel(username: username, email: email);
      final response = await apiClient.request(
        requestType: RequestType.post,
        path: '/api/v1/users/',
        data: temp.toJson(),
      );
      if (response['status'] == 'success') {
        _user = UserModel(
          userId: response["userId"],
          username: username,
          email: email,
        );
        user = _user;
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  set user(UserModel? user) {
    log("set user ${user?.toJson() ?? "null"}");
    _user = user;
    storage.write("user", user!.toJson());
  }

  UserModel? get user {
    log(storage.read("user").toString());
    return _user ?? UserModel.fromJson(storage.read("user"));
  }
}
