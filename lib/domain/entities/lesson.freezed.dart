// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get estimatedTime => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  List<CodeSnippet> get codeSnippets => throw _privateConstructorUsedError;
  Map<String, String> get referenceSolutions =>
      throw _privateConstructorUsedError;
  LessonMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String difficulty,
      String estimatedTime,
      List<String> prerequisites,
      List<CodeSnippet> codeSnippets,
      Map<String, String> referenceSolutions,
      LessonMetadata metadata});

  $LessonMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? difficulty = null,
    Object? estimatedTime = null,
    Object? prerequisites = null,
    Object? codeSnippets = null,
    Object? referenceSolutions = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      codeSnippets: null == codeSnippets
          ? _value.codeSnippets
          : codeSnippets // ignore: cast_nullable_to_non_nullable
              as List<CodeSnippet>,
      referenceSolutions: null == referenceSolutions
          ? _value.referenceSolutions
          : referenceSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LessonMetadata,
    ) as $Val);
  }

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonMetadataCopyWith<$Res> get metadata {
    return $LessonMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String difficulty,
      String estimatedTime,
      List<String> prerequisites,
      List<CodeSnippet> codeSnippets,
      Map<String, String> referenceSolutions,
      LessonMetadata metadata});

  @override
  $LessonMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? difficulty = null,
    Object? estimatedTime = null,
    Object? prerequisites = null,
    Object? codeSnippets = null,
    Object? referenceSolutions = null,
    Object? metadata = null,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      codeSnippets: null == codeSnippets
          ? _value._codeSnippets
          : codeSnippets // ignore: cast_nullable_to_non_nullable
              as List<CodeSnippet>,
      referenceSolutions: null == referenceSolutions
          ? _value._referenceSolutions
          : referenceSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LessonMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.difficulty,
      required this.estimatedTime,
      final List<String> prerequisites = const [],
      required final List<CodeSnippet> codeSnippets,
      required final Map<String, String> referenceSolutions,
      required this.metadata})
      : _prerequisites = prerequisites,
        _codeSnippets = codeSnippets,
        _referenceSolutions = referenceSolutions;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String difficulty;
  @override
  final String estimatedTime;
  final List<String> _prerequisites;
  @override
  @JsonKey()
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<CodeSnippet> _codeSnippets;
  @override
  List<CodeSnippet> get codeSnippets {
    if (_codeSnippets is EqualUnmodifiableListView) return _codeSnippets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codeSnippets);
  }

  final Map<String, String> _referenceSolutions;
  @override
  Map<String, String> get referenceSolutions {
    if (_referenceSolutions is EqualUnmodifiableMapView)
      return _referenceSolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_referenceSolutions);
  }

  @override
  final LessonMetadata metadata;

  @override
  String toString() {
    return 'Lesson(id: $id, title: $title, description: $description, difficulty: $difficulty, estimatedTime: $estimatedTime, prerequisites: $prerequisites, codeSnippets: $codeSnippets, referenceSolutions: $referenceSolutions, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.estimatedTime, estimatedTime) ||
                other.estimatedTime == estimatedTime) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality()
                .equals(other._codeSnippets, _codeSnippets) &&
            const DeepCollectionEquality()
                .equals(other._referenceSolutions, _referenceSolutions) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      difficulty,
      estimatedTime,
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_codeSnippets),
      const DeepCollectionEquality().hash(_referenceSolutions),
      metadata);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final String id,
      required final String title,
      required final String description,
      required final String difficulty,
      required final String estimatedTime,
      final List<String> prerequisites,
      required final List<CodeSnippet> codeSnippets,
      required final Map<String, String> referenceSolutions,
      required final LessonMetadata metadata}) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get difficulty;
  @override
  String get estimatedTime;
  @override
  List<String> get prerequisites;
  @override
  List<CodeSnippet> get codeSnippets;
  @override
  Map<String, String> get referenceSolutions;
  @override
  LessonMetadata get metadata;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
