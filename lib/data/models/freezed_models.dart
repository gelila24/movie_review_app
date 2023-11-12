// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? userId,
    String? username,
    String? email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    String? movieId,
    String? Title,
    String? Year,
    String? Runtime,
    String? Genre,
    String? Director,
    String? Writer,
    String? Actors,
    String? Plot,
    String? Language,
    String? Type,
    String? Poster,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class MovieDetailModel with _$MovieDetailModel {
  factory MovieDetailModel({
    String? movieId,
    String? Title,
    String? Year,
    String? Runtime,
    String? Genre,
    String? Director,
    String? Writer,
    String? Actors,
    String? Plot,
    String? Language,
    String? Type,
    String? Poster,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}

@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    String? movie_id,
    String? user_id,
    String? comment,
    double? rating,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

@freezed
abstract class FilterMoviesModel with _$FilterMoviesModel {
  factory FilterMoviesModel({
    String? title,
    String? year,
  }) = _FilterMoviesModel;
  factory FilterMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$FilterMoviesModelFromJson(json);
}
