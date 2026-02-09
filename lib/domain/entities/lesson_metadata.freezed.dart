// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonMetadata _$LessonMetadataFromJson(Map<String, dynamic> json) {
  return _LessonMetadata.fromJson(json);
}

/// @nodoc
mixin _$LessonMetadata {
  String get author => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  Map<String, dynamic> get additionalInfo => throw _privateConstructorUsedError;

  /// Serializes this LessonMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonMetadataCopyWith<LessonMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonMetadataCopyWith<$Res> {
  factory $LessonMetadataCopyWith(
          LessonMetadata value, $Res Function(LessonMetadata) then) =
      _$LessonMetadataCopyWithImpl<$Res, LessonMetadata>;
  @useResult
  $Res call(
      {String author,
      DateTime created,
      String version,
      Map<String, dynamic> additionalInfo});
}

/// @nodoc
class _$LessonMetadataCopyWithImpl<$Res, $Val extends LessonMetadata>
    implements $LessonMetadataCopyWith<$Res> {
  _$LessonMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? created = null,
    Object? version = null,
    Object? additionalInfo = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonMetadataImplCopyWith<$Res>
    implements $LessonMetadataCopyWith<$Res> {
  factory _$$LessonMetadataImplCopyWith(_$LessonMetadataImpl value,
          $Res Function(_$LessonMetadataImpl) then) =
      __$$LessonMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      DateTime created,
      String version,
      Map<String, dynamic> additionalInfo});
}

/// @nodoc
class __$$LessonMetadataImplCopyWithImpl<$Res>
    extends _$LessonMetadataCopyWithImpl<$Res, _$LessonMetadataImpl>
    implements _$$LessonMetadataImplCopyWith<$Res> {
  __$$LessonMetadataImplCopyWithImpl(
      _$LessonMetadataImpl _value, $Res Function(_$LessonMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? created = null,
    Object? version = null,
    Object? additionalInfo = null,
  }) {
    return _then(_$LessonMetadataImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      additionalInfo: null == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonMetadataImpl implements _LessonMetadata {
  const _$LessonMetadataImpl(
      {required this.author,
      required this.created,
      required this.version,
      final Map<String, dynamic> additionalInfo = const {}})
      : _additionalInfo = additionalInfo;

  factory _$LessonMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonMetadataImplFromJson(json);

  @override
  final String author;
  @override
  final DateTime created;
  @override
  final String version;
  final Map<String, dynamic> _additionalInfo;
  @override
  @JsonKey()
  Map<String, dynamic> get additionalInfo {
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_additionalInfo);
  }

  @override
  String toString() {
    return 'LessonMetadata(author: $author, created: $created, version: $version, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonMetadataImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, author, created, version,
      const DeepCollectionEquality().hash(_additionalInfo));

  /// Create a copy of LessonMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonMetadataImplCopyWith<_$LessonMetadataImpl> get copyWith =>
      __$$LessonMetadataImplCopyWithImpl<_$LessonMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonMetadataImplToJson(
      this,
    );
  }
}

abstract class _LessonMetadata implements LessonMetadata {
  const factory _LessonMetadata(
      {required final String author,
      required final DateTime created,
      required final String version,
      final Map<String, dynamic> additionalInfo}) = _$LessonMetadataImpl;

  factory _LessonMetadata.fromJson(Map<String, dynamic> json) =
      _$LessonMetadataImpl.fromJson;

  @override
  String get author;
  @override
  DateTime get created;
  @override
  String get version;
  @override
  Map<String, dynamic> get additionalInfo;

  /// Create a copy of LessonMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonMetadataImplCopyWith<_$LessonMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
