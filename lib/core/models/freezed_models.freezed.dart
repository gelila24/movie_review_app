// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({String? userId, String? username, String? email});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? username, String? email});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl with DiagnosticableTreeMixin implements _UserModel {
  _$UserModelImpl({this.userId, this.username, this.email});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? username;
  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(userId: $userId, username: $username, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final String? userId,
      final String? username,
      final String? email}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get username;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String? get movieId => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  String? get Year => throw _privateConstructorUsedError;
  String? get Runtime => throw _privateConstructorUsedError;
  String? get Genre => throw _privateConstructorUsedError;
  String? get Director => throw _privateConstructorUsedError;
  String? get Writer => throw _privateConstructorUsedError;
  String? get Actors => throw _privateConstructorUsedError;
  String? get Plot => throw _privateConstructorUsedError;
  String? get Language => throw _privateConstructorUsedError;
  String? get Type => throw _privateConstructorUsedError;
  String? get Poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String? movieId,
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
      String? Poster});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Type = freezed,
    Object? Poster = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? movieId,
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
      String? Poster});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Type = freezed,
    Object? Poster = freezed,
  }) {
    return _then(_$MovieModelImpl(
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl with DiagnosticableTreeMixin implements _MovieModel {
  _$MovieModelImpl(
      {this.movieId,
      this.Title,
      this.Year,
      this.Runtime,
      this.Genre,
      this.Director,
      this.Writer,
      this.Actors,
      this.Plot,
      this.Language,
      this.Type,
      this.Poster});

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final String? movieId;
  @override
  final String? Title;
  @override
  final String? Year;
  @override
  final String? Runtime;
  @override
  final String? Genre;
  @override
  final String? Director;
  @override
  final String? Writer;
  @override
  final String? Actors;
  @override
  final String? Plot;
  @override
  final String? Language;
  @override
  final String? Type;
  @override
  final String? Poster;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieModel(movieId: $movieId, Title: $Title, Year: $Year, Runtime: $Runtime, Genre: $Genre, Director: $Director, Writer: $Writer, Actors: $Actors, Plot: $Plot, Language: $Language, Type: $Type, Poster: $Poster)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieModel'))
      ..add(DiagnosticsProperty('movieId', movieId))
      ..add(DiagnosticsProperty('Title', Title))
      ..add(DiagnosticsProperty('Year', Year))
      ..add(DiagnosticsProperty('Runtime', Runtime))
      ..add(DiagnosticsProperty('Genre', Genre))
      ..add(DiagnosticsProperty('Director', Director))
      ..add(DiagnosticsProperty('Writer', Writer))
      ..add(DiagnosticsProperty('Actors', Actors))
      ..add(DiagnosticsProperty('Plot', Plot))
      ..add(DiagnosticsProperty('Language', Language))
      ..add(DiagnosticsProperty('Type', Type))
      ..add(DiagnosticsProperty('Poster', Poster));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Year, Year) || other.Year == Year) &&
            (identical(other.Runtime, Runtime) || other.Runtime == Runtime) &&
            (identical(other.Genre, Genre) || other.Genre == Genre) &&
            (identical(other.Director, Director) ||
                other.Director == Director) &&
            (identical(other.Writer, Writer) || other.Writer == Writer) &&
            (identical(other.Actors, Actors) || other.Actors == Actors) &&
            (identical(other.Plot, Plot) || other.Plot == Plot) &&
            (identical(other.Language, Language) ||
                other.Language == Language) &&
            (identical(other.Type, Type) || other.Type == Type) &&
            (identical(other.Poster, Poster) || other.Poster == Poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movieId, Title, Year, Runtime,
      Genre, Director, Writer, Actors, Plot, Language, Type, Poster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  factory _MovieModel(
      {final String? movieId,
      final String? Title,
      final String? Year,
      final String? Runtime,
      final String? Genre,
      final String? Director,
      final String? Writer,
      final String? Actors,
      final String? Plot,
      final String? Language,
      final String? Type,
      final String? Poster}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  String? get movieId;
  @override
  String? get Title;
  @override
  String? get Year;
  @override
  String? get Runtime;
  @override
  String? get Genre;
  @override
  String? get Director;
  @override
  String? get Writer;
  @override
  String? get Actors;
  @override
  String? get Plot;
  @override
  String? get Language;
  @override
  String? get Type;
  @override
  String? get Poster;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  String? get movieId => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  String? get Year => throw _privateConstructorUsedError;
  String? get Runtime => throw _privateConstructorUsedError;
  String? get Genre => throw _privateConstructorUsedError;
  String? get Director => throw _privateConstructorUsedError;
  String? get Writer => throw _privateConstructorUsedError;
  String? get Actors => throw _privateConstructorUsedError;
  String? get Plot => throw _privateConstructorUsedError;
  String? get Language => throw _privateConstructorUsedError;
  String? get Type => throw _privateConstructorUsedError;
  String? get Poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res, MovieDetailModel>;
  @useResult
  $Res call(
      {String? movieId,
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
      String? Poster});
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res, $Val extends MovieDetailModel>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Type = freezed,
    Object? Poster = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailModelImplCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$MovieDetailModelImplCopyWith(_$MovieDetailModelImpl value,
          $Res Function(_$MovieDetailModelImpl) then) =
      __$$MovieDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? movieId,
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
      String? Poster});
}

/// @nodoc
class __$$MovieDetailModelImplCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res, _$MovieDetailModelImpl>
    implements _$$MovieDetailModelImplCopyWith<$Res> {
  __$$MovieDetailModelImplCopyWithImpl(_$MovieDetailModelImpl _value,
      $Res Function(_$MovieDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Type = freezed,
    Object? Poster = freezed,
  }) {
    return _then(_$MovieDetailModelImpl(
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailModelImpl
    with DiagnosticableTreeMixin
    implements _MovieDetailModel {
  _$MovieDetailModelImpl(
      {this.movieId,
      this.Title,
      this.Year,
      this.Runtime,
      this.Genre,
      this.Director,
      this.Writer,
      this.Actors,
      this.Plot,
      this.Language,
      this.Type,
      this.Poster});

  factory _$MovieDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailModelImplFromJson(json);

  @override
  final String? movieId;
  @override
  final String? Title;
  @override
  final String? Year;
  @override
  final String? Runtime;
  @override
  final String? Genre;
  @override
  final String? Director;
  @override
  final String? Writer;
  @override
  final String? Actors;
  @override
  final String? Plot;
  @override
  final String? Language;
  @override
  final String? Type;
  @override
  final String? Poster;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieDetailModel(movieId: $movieId, Title: $Title, Year: $Year, Runtime: $Runtime, Genre: $Genre, Director: $Director, Writer: $Writer, Actors: $Actors, Plot: $Plot, Language: $Language, Type: $Type, Poster: $Poster)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieDetailModel'))
      ..add(DiagnosticsProperty('movieId', movieId))
      ..add(DiagnosticsProperty('Title', Title))
      ..add(DiagnosticsProperty('Year', Year))
      ..add(DiagnosticsProperty('Runtime', Runtime))
      ..add(DiagnosticsProperty('Genre', Genre))
      ..add(DiagnosticsProperty('Director', Director))
      ..add(DiagnosticsProperty('Writer', Writer))
      ..add(DiagnosticsProperty('Actors', Actors))
      ..add(DiagnosticsProperty('Plot', Plot))
      ..add(DiagnosticsProperty('Language', Language))
      ..add(DiagnosticsProperty('Type', Type))
      ..add(DiagnosticsProperty('Poster', Poster));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailModelImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Year, Year) || other.Year == Year) &&
            (identical(other.Runtime, Runtime) || other.Runtime == Runtime) &&
            (identical(other.Genre, Genre) || other.Genre == Genre) &&
            (identical(other.Director, Director) ||
                other.Director == Director) &&
            (identical(other.Writer, Writer) || other.Writer == Writer) &&
            (identical(other.Actors, Actors) || other.Actors == Actors) &&
            (identical(other.Plot, Plot) || other.Plot == Plot) &&
            (identical(other.Language, Language) ||
                other.Language == Language) &&
            (identical(other.Type, Type) || other.Type == Type) &&
            (identical(other.Poster, Poster) || other.Poster == Poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movieId, Title, Year, Runtime,
      Genre, Director, Writer, Actors, Plot, Language, Type, Poster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      __$$MovieDetailModelImplCopyWithImpl<_$MovieDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailModel implements MovieDetailModel {
  factory _MovieDetailModel(
      {final String? movieId,
      final String? Title,
      final String? Year,
      final String? Runtime,
      final String? Genre,
      final String? Director,
      final String? Writer,
      final String? Actors,
      final String? Plot,
      final String? Language,
      final String? Type,
      final String? Poster}) = _$MovieDetailModelImpl;

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailModelImpl.fromJson;

  @override
  String? get movieId;
  @override
  String? get Title;
  @override
  String? get Year;
  @override
  String? get Runtime;
  @override
  String? get Genre;
  @override
  String? get Director;
  @override
  String? get Writer;
  @override
  String? get Actors;
  @override
  String? get Plot;
  @override
  String? get Language;
  @override
  String? get Type;
  @override
  String? get Poster;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  String? get movie_id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) then) =
      _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call(
      {String? movie_id, String? user_id, String? comment, double? rating});
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie_id = freezed,
    Object? user_id = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      movie_id: freezed == movie_id
          ? _value.movie_id
          : movie_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
          _$ReviewModelImpl value, $Res Function(_$ReviewModelImpl) then) =
      __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? movie_id, String? user_id, String? comment, double? rating});
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
      _$ReviewModelImpl _value, $Res Function(_$ReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie_id = freezed,
    Object? user_id = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$ReviewModelImpl(
      movie_id: freezed == movie_id
          ? _value.movie_id
          : movie_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl with DiagnosticableTreeMixin implements _ReviewModel {
  _$ReviewModelImpl({this.movie_id, this.user_id, this.comment, this.rating});

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  final String? movie_id;
  @override
  final String? user_id;
  @override
  final String? comment;
  @override
  final double? rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewModel(movie_id: $movie_id, user_id: $user_id, comment: $comment, rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewModel'))
      ..add(DiagnosticsProperty('movie_id', movie_id))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.movie_id, movie_id) ||
                other.movie_id == movie_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, movie_id, user_id, comment, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewModel implements ReviewModel {
  factory _ReviewModel(
      {final String? movie_id,
      final String? user_id,
      final String? comment,
      final double? rating}) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  String? get movie_id;
  @override
  String? get user_id;
  @override
  String? get comment;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterMoviesModel _$FilterMoviesModelFromJson(Map<String, dynamic> json) {
  return _FilterMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$FilterMoviesModel {
  String? get title => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterMoviesModelCopyWith<FilterMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterMoviesModelCopyWith<$Res> {
  factory $FilterMoviesModelCopyWith(
          FilterMoviesModel value, $Res Function(FilterMoviesModel) then) =
      _$FilterMoviesModelCopyWithImpl<$Res, FilterMoviesModel>;
  @useResult
  $Res call({String? title, String? year});
}

/// @nodoc
class _$FilterMoviesModelCopyWithImpl<$Res, $Val extends FilterMoviesModel>
    implements $FilterMoviesModelCopyWith<$Res> {
  _$FilterMoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterMoviesModelImplCopyWith<$Res>
    implements $FilterMoviesModelCopyWith<$Res> {
  factory _$$FilterMoviesModelImplCopyWith(_$FilterMoviesModelImpl value,
          $Res Function(_$FilterMoviesModelImpl) then) =
      __$$FilterMoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? year});
}

/// @nodoc
class __$$FilterMoviesModelImplCopyWithImpl<$Res>
    extends _$FilterMoviesModelCopyWithImpl<$Res, _$FilterMoviesModelImpl>
    implements _$$FilterMoviesModelImplCopyWith<$Res> {
  __$$FilterMoviesModelImplCopyWithImpl(_$FilterMoviesModelImpl _value,
      $Res Function(_$FilterMoviesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FilterMoviesModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterMoviesModelImpl
    with DiagnosticableTreeMixin
    implements _FilterMoviesModel {
  _$FilterMoviesModelImpl({this.title, this.year});

  factory _$FilterMoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterMoviesModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? year;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterMoviesModel(title: $title, year: $year)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterMoviesModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('year', year));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterMoviesModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterMoviesModelImplCopyWith<_$FilterMoviesModelImpl> get copyWith =>
      __$$FilterMoviesModelImplCopyWithImpl<_$FilterMoviesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterMoviesModelImplToJson(
      this,
    );
  }
}

abstract class _FilterMoviesModel implements FilterMoviesModel {
  factory _FilterMoviesModel({final String? title, final String? year}) =
      _$FilterMoviesModelImpl;

  factory _FilterMoviesModel.fromJson(Map<String, dynamic> json) =
      _$FilterMoviesModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get year;
  @override
  @JsonKey(ignore: true)
  _$$FilterMoviesModelImplCopyWith<_$FilterMoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
