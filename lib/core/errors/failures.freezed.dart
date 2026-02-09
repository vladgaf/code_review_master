// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSystemFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FileSystemFailureImplCopyWith(_$FileSystemFailureImpl value,
          $Res Function(_$FileSystemFailureImpl) then) =
      __$$FileSystemFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$FileSystemFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FileSystemFailureImpl>
    implements _$$FileSystemFailureImplCopyWith<$Res> {
  __$$FileSystemFailureImplCopyWithImpl(_$FileSystemFailureImpl _value,
      $Res Function(_$FileSystemFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$FileSystemFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileSystemFailureImpl implements FileSystemFailure {
  const _$FileSystemFailureImpl(
      {required this.message, this.code = 'FileSystemError'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.fileSystemFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSystemFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSystemFailureImplCopyWith<_$FileSystemFailureImpl> get copyWith =>
      __$$FileSystemFailureImplCopyWithImpl<_$FileSystemFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) {
    return fileSystemFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) {
    return fileSystemFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) {
    if (fileSystemFailure != null) {
      return fileSystemFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return fileSystemFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return fileSystemFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (fileSystemFailure != null) {
      return fileSystemFailure(this);
    }
    return orElse();
  }
}

abstract class FileSystemFailure implements Failure {
  const factory FileSystemFailure(
      {required final String message,
      final String code}) = _$FileSystemFailureImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileSystemFailureImplCopyWith<_$FileSystemFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonParseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$JsonParseFailureImplCopyWith(_$JsonParseFailureImpl value,
          $Res Function(_$JsonParseFailureImpl) then) =
      __$$JsonParseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$JsonParseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$JsonParseFailureImpl>
    implements _$$JsonParseFailureImplCopyWith<$Res> {
  __$$JsonParseFailureImplCopyWithImpl(_$JsonParseFailureImpl _value,
      $Res Function(_$JsonParseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$JsonParseFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JsonParseFailureImpl implements JsonParseFailure {
  const _$JsonParseFailureImpl(
      {required this.message, this.code = 'JsonParseError'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.jsonParseFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonParseFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonParseFailureImplCopyWith<_$JsonParseFailureImpl> get copyWith =>
      __$$JsonParseFailureImplCopyWithImpl<_$JsonParseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) {
    return jsonParseFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) {
    return jsonParseFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) {
    if (jsonParseFailure != null) {
      return jsonParseFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return jsonParseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return jsonParseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (jsonParseFailure != null) {
      return jsonParseFailure(this);
    }
    return orElse();
  }
}

abstract class JsonParseFailure implements Failure {
  const factory JsonParseFailure(
      {required final String message,
      final String code}) = _$JsonParseFailureImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonParseFailureImplCopyWith<_$JsonParseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseNotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CourseNotFoundFailureImplCopyWith(
          _$CourseNotFoundFailureImpl value,
          $Res Function(_$CourseNotFoundFailureImpl) then) =
      __$$CourseNotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$CourseNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CourseNotFoundFailureImpl>
    implements _$$CourseNotFoundFailureImplCopyWith<$Res> {
  __$$CourseNotFoundFailureImplCopyWithImpl(_$CourseNotFoundFailureImpl _value,
      $Res Function(_$CourseNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$CourseNotFoundFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseNotFoundFailureImpl implements CourseNotFoundFailure {
  const _$CourseNotFoundFailureImpl(
      {required this.message, this.code = 'CourseNotFound'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.courseNotFoundFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseNotFoundFailureImplCopyWith<_$CourseNotFoundFailureImpl>
      get copyWith => __$$CourseNotFoundFailureImplCopyWithImpl<
          _$CourseNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) {
    return courseNotFoundFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) {
    return courseNotFoundFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) {
    if (courseNotFoundFailure != null) {
      return courseNotFoundFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return courseNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return courseNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (courseNotFoundFailure != null) {
      return courseNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class CourseNotFoundFailure implements Failure {
  const factory CourseNotFoundFailure(
      {required final String message,
      final String code}) = _$CourseNotFoundFailureImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseNotFoundFailureImplCopyWith<_$CourseNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LessonNotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LessonNotFoundFailureImplCopyWith(
          _$LessonNotFoundFailureImpl value,
          $Res Function(_$LessonNotFoundFailureImpl) then) =
      __$$LessonNotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$LessonNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LessonNotFoundFailureImpl>
    implements _$$LessonNotFoundFailureImplCopyWith<$Res> {
  __$$LessonNotFoundFailureImplCopyWithImpl(_$LessonNotFoundFailureImpl _value,
      $Res Function(_$LessonNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$LessonNotFoundFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LessonNotFoundFailureImpl implements LessonNotFoundFailure {
  const _$LessonNotFoundFailureImpl(
      {required this.message, this.code = 'LessonNotFound'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.lessonNotFoundFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonNotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonNotFoundFailureImplCopyWith<_$LessonNotFoundFailureImpl>
      get copyWith => __$$LessonNotFoundFailureImplCopyWithImpl<
          _$LessonNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) {
    return lessonNotFoundFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) {
    return lessonNotFoundFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) {
    if (lessonNotFoundFailure != null) {
      return lessonNotFoundFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return lessonNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return lessonNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (lessonNotFoundFailure != null) {
      return lessonNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class LessonNotFoundFailure implements Failure {
  const factory LessonNotFoundFailure(
      {required final String message,
      final String code}) = _$LessonNotFoundFailureImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonNotFoundFailureImplCopyWith<_$LessonNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl(
      {required this.message, this.code = 'UnknownError'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'Failure.unknownFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String code) fileSystemFailure,
    required TResult Function(String message, String code) jsonParseFailure,
    required TResult Function(String message, String code)
        courseNotFoundFailure,
    required TResult Function(String message, String code)
        lessonNotFoundFailure,
    required TResult Function(String message, String code) unknownFailure,
  }) {
    return unknownFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String code)? fileSystemFailure,
    TResult? Function(String message, String code)? jsonParseFailure,
    TResult? Function(String message, String code)? courseNotFoundFailure,
    TResult? Function(String message, String code)? lessonNotFoundFailure,
    TResult? Function(String message, String code)? unknownFailure,
  }) {
    return unknownFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String code)? fileSystemFailure,
    TResult Function(String message, String code)? jsonParseFailure,
    TResult Function(String message, String code)? courseNotFoundFailure,
    TResult Function(String message, String code)? lessonNotFoundFailure,
    TResult Function(String message, String code)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSystemFailure value) fileSystemFailure,
    required TResult Function(JsonParseFailure value) jsonParseFailure,
    required TResult Function(CourseNotFoundFailure value)
        courseNotFoundFailure,
    required TResult Function(LessonNotFoundFailure value)
        lessonNotFoundFailure,
    required TResult Function(UnknownFailure value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileSystemFailure value)? fileSystemFailure,
    TResult? Function(JsonParseFailure value)? jsonParseFailure,
    TResult? Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult? Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult? Function(UnknownFailure value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSystemFailure value)? fileSystemFailure,
    TResult Function(JsonParseFailure value)? jsonParseFailure,
    TResult Function(CourseNotFoundFailure value)? courseNotFoundFailure,
    TResult Function(LessonNotFoundFailure value)? lessonNotFoundFailure,
    TResult Function(UnknownFailure value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure(
      {required final String message,
      final String code}) = _$UnknownFailureImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
