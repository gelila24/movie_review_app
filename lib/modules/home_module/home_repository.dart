import 'dart:developer';
import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/data/services/api/api_client.dart';
import 'package:movie_review_app/shared/enums.dart';

class HomeRepository {
  final ApiClient apiClient;
  final GetStorage storage = GetStorage();

  HomeRepository({required this.apiClient});

  Future<List<MovieModel>> getAllMovie() async {
    try {
      final response = await apiClient.request(
          requestType: RequestType.get,
          path: '/api/v1/movies/?page=1&perPage=100',
          queryParameters: {});
      List<MovieModel> movies = [];
      for (var movie in response['data']) {
        movies.add(MovieModel.fromJson(movie));
      }
      return movies;
    } catch (e) {
      return [];
    }
  }

  Future<bool> registerMovie(MovieModel movieModel) async {
    try {
      final response = await apiClient.sendFormData(
          fileFieldName: 'Poster',
          formPayload: movieModel.toJson(),
          endPoint: '/api/v1/movies/',
          file: File(movieModel.Poster!));
      if (response['status'] == 'success') {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<List<MovieModel>> searchMovie(FilterMoviesModel payload) async {
    try {
      final response = await apiClient.request(
        requestType: RequestType.get,
        path: '/api/v1/movies/',
        queryParameters: payload.toJson(),
      );
      List<MovieModel> movies = [];
      for (var movie in response['data']) {
        movies.add(MovieModel.fromJson(movie));
      }
      return movies;
    } catch (e) {
      return [];
    }
  }

  Future<MovieDetailModel?> selectMovie(String id) async {
    try {
      final response = await apiClient.request(
        requestType: RequestType.get,
        path: '/api/v1/movies/$id',
      );
      MovieDetailModel movie = MovieDetailModel.fromJson(response);
      return movie;
    } on Exception catch (e) {
      log(e as String);
      return null;
    }
  }

  Future<List<ReviewModel>> getReview(String id) async {
    try {
      final response = await apiClient.request(
          requestType: RequestType.get,
          path: '/api/v1/reviews/$id',
          queryParameters: {});
      List<ReviewModel> reviews = [];
      for (var review in response['data']) {
        reviews.add(ReviewModel.fromJson(review));
      }
      print("reviews: ${response['data']}");
      return reviews;
    } catch (e) {
      print("error cant get all reviews $e");
      return [];
    }
  }

  Future<bool> addReview(ReviewModel review) async {
    try {
      final response = await apiClient.request(
        requestType: RequestType.post,
        path: '/api/v1/reviews/',
        data: review.toJson(),
      );
      if (response['status'] == 'success') {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
