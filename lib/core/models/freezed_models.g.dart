// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
    };

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      movieId: json['movieId'] as String?,
      Title: json['Title'] as String?,
      Year: json['Year'] as String?,
      Runtime: json['Runtime'] as String?,
      Genre: json['Genre'] as String?,
      Director: json['Director'] as String?,
      Writer: json['Writer'] as String?,
      Actors: json['Actors'] as String?,
      Plot: json['Plot'] as String?,
      Language: json['Language'] as String?,
      Type: json['Type'] as String?,
      Poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'Title': instance.Title,
      'Year': instance.Year,
      'Runtime': instance.Runtime,
      'Genre': instance.Genre,
      'Director': instance.Director,
      'Writer': instance.Writer,
      'Actors': instance.Actors,
      'Plot': instance.Plot,
      'Language': instance.Language,
      'Type': instance.Type,
      'Poster': instance.Poster,
    };

_$MovieDetailModelImpl _$$MovieDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailModelImpl(
      movieId: json['movieId'] as String?,
      Title: json['Title'] as String?,
      Year: json['Year'] as String?,
      Runtime: json['Runtime'] as String?,
      Genre: json['Genre'] as String?,
      Director: json['Director'] as String?,
      Writer: json['Writer'] as String?,
      Actors: json['Actors'] as String?,
      Plot: json['Plot'] as String?,
      Language: json['Language'] as String?,
      Type: json['Type'] as String?,
      Poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$$MovieDetailModelImplToJson(
        _$MovieDetailModelImpl instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'Title': instance.Title,
      'Year': instance.Year,
      'Runtime': instance.Runtime,
      'Genre': instance.Genre,
      'Director': instance.Director,
      'Writer': instance.Writer,
      'Actors': instance.Actors,
      'Plot': instance.Plot,
      'Language': instance.Language,
      'Type': instance.Type,
      'Poster': instance.Poster,
    };

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      movie_id: json['movie_id'] as String?,
      user_id: json['user_id'] as String?,
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'movie_id': instance.movie_id,
      'user_id': instance.user_id,
      'comment': instance.comment,
      'rating': instance.rating,
    };

_$FilterMoviesModelImpl _$$FilterMoviesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterMoviesModelImpl(
      title: json['title'] as String?,
      year: json['year'] as String?,
    );

Map<String, dynamic> _$$FilterMoviesModelImplToJson(
        _$FilterMoviesModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
    };
