// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
mixin _$LessonModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get estimatedTime => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  List<CodeSnippetModel> get codeSnippets => throw _privateConstructorUsedError;
  Map<String, String> get referenceSolutions =>
      throw _privateConstructorUsedError;
  LessonMetadataModel get metadata => throw _privateConstructorUsedError;

  /// Serializes this LessonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res, LessonModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String difficulty,
      String estimatedTime,
      List<String> prerequisites,
      List<CodeSnippetModel> codeSnippets,
      Map<String, String> referenceSolutions,
      LessonMetadataModel metadata});

  $LessonMetadataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res, $Val extends LessonModel>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonModel
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
              as List<CodeSnippetModel>,
      referenceSolutions: null == referenceSolutions
          ? _value.referenceSolutions
          : referenceSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LessonMetadataModel,
    ) as $Val);
  }

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonMetadataModelCopyWith<$Res> get metadata {
    return $LessonMetadataModelCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonModelImplCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$LessonModelImplCopyWith(
          _$LessonModelImpl value, $Res Function(_$LessonModelImpl) then) =
      __$$LessonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String difficulty,
      String estimatedTime,
      List<String> prerequisites,
      List<CodeSnippetModel> codeSnippets,
      Map<String, String> referenceSolutions,
      LessonMetadataModel metadata});

  @override
  $LessonMetadataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$LessonModelImplCopyWithImpl<$Res>
    extends _$LessonModelCopyWithImpl<$Res, _$LessonModelImpl>
    implements _$$LessonModelImplCopyWith<$Res> {
  __$$LessonModelImplCopyWithImpl(
      _$LessonModelImpl _value, $Res Function(_$LessonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonModel
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
    return _then(_$LessonModelImpl(
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
              as List<CodeSnippetModel>,
      referenceSolutions: null == referenceSolutions
          ? _value._referenceSolutions
          : referenceSolutions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LessonMetadataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonModelImpl implements _LessonModel {
  const _$LessonModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.difficulty,
      required this.estimatedTime,
      final List<String> prerequisites = const [],
      required final List<CodeSnippetModel> codeSnippets,
      required final Map<String, String> referenceSolutions,
      required this.metadata})
      : _prerequisites = prerequisites,
        _codeSnippets = codeSnippets,
        _referenceSolutions = referenceSolutions;

  factory _$LessonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonModelImplFromJson(json);

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

  final List<CodeSnippetModel> _codeSnippets;
  @override
  List<CodeSnippetModel> get codeSnippets {
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
  final LessonMetadataModel metadata;

  @override
  String toString() {
    return 'LessonModel(id: $id, title: $title, description: $description, difficulty: $difficulty, estimatedTime: $estimatedTime, prerequisites: $prerequisites, codeSnippets: $codeSnippets, referenceSolutions: $referenceSolutions, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonModelImpl &&
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

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonModelImplCopyWith<_$LessonModelImpl> get copyWith =>
      __$$LessonModelImplCopyWithImpl<_$LessonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonModelImplToJson(
      this,
    );
  }
}

abstract class _LessonModel implements LessonModel {
  const factory _LessonModel(
      {required final String id,
      required final String title,
      required final String description,
      required final String difficulty,
      required final String estimatedTime,
      final List<String> prerequisites,
      required final List<CodeSnippetModel> codeSnippets,
      required final Map<String, String> referenceSolutions,
      required final LessonMetadataModel metadata}) = _$LessonModelImpl;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$LessonModelImpl.fromJson;

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
  List<CodeSnippetModel> get codeSnippets;
  @override
  Map<String, String> get referenceSolutions;
  @override
  LessonMetadataModel get metadata;

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonModelImplCopyWith<_$LessonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeSnippetModel _$CodeSnippetModelFromJson(Map<String, dynamic> json) {
  return _CodeSnippetModel.fromJson(json);
}

/// @nodoc
mixin _$CodeSnippetModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get hints => throw _privateConstructorUsedError;

  /// Serializes this CodeSnippetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeSnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeSnippetModelCopyWith<CodeSnippetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSnippetModelCopyWith<$Res> {
  factory $CodeSnippetModelCopyWith(
          CodeSnippetModel value, $Res Function(CodeSnippetModel) then) =
      _$CodeSnippetModelCopyWithImpl<$Res, CodeSnippetModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String code,
      String language,
      List<String> hints});
}

/// @nodoc
class _$CodeSnippetModelCopyWithImpl<$Res, $Val extends CodeSnippetModel>
    implements $CodeSnippetModelCopyWith<$Res> {
  _$CodeSnippetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeSnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
    Object? language = null,
    Object? hints = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      hints: null == hints
          ? _value.hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeSnippetModelImplCopyWith<$Res>
    implements $CodeSnippetModelCopyWith<$Res> {
  factory _$$CodeSnippetModelImplCopyWith(_$CodeSnippetModelImpl value,
          $Res Function(_$CodeSnippetModelImpl) then) =
      __$$CodeSnippetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String code,
      String language,
      List<String> hints});
}

/// @nodoc
class __$$CodeSnippetModelImplCopyWithImpl<$Res>
    extends _$CodeSnippetModelCopyWithImpl<$Res, _$CodeSnippetModelImpl>
    implements _$$CodeSnippetModelImplCopyWith<$Res> {
  __$$CodeSnippetModelImplCopyWithImpl(_$CodeSnippetModelImpl _value,
      $Res Function(_$CodeSnippetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeSnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
    Object? language = null,
    Object? hints = null,
  }) {
    return _then(_$CodeSnippetModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      hints: null == hints
          ? _value._hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSnippetModelImpl implements _CodeSnippetModel {
  const _$CodeSnippetModelImpl(
      {required this.id,
      required this.title,
      required this.code,
      required this.language,
      final List<String> hints = const []})
      : _hints = hints;

  factory _$CodeSnippetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSnippetModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String code;
  @override
  final String language;
  final List<String> _hints;
  @override
  @JsonKey()
  List<String> get hints {
    if (_hints is EqualUnmodifiableListView) return _hints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  @override
  String toString() {
    return 'CodeSnippetModel(id: $id, title: $title, code: $code, language: $language, hints: $hints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSnippetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._hints, _hints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code, language,
      const DeepCollectionEquality().hash(_hints));

  /// Create a copy of CodeSnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSnippetModelImplCopyWith<_$CodeSnippetModelImpl> get copyWith =>
      __$$CodeSnippetModelImplCopyWithImpl<_$CodeSnippetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSnippetModelImplToJson(
      this,
    );
  }
}

abstract class _CodeSnippetModel implements CodeSnippetModel {
  const factory _CodeSnippetModel(
      {required final String id,
      required final String title,
      required final String code,
      required final String language,
      final List<String> hints}) = _$CodeSnippetModelImpl;

  factory _CodeSnippetModel.fromJson(Map<String, dynamic> json) =
      _$CodeSnippetModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get code;
  @override
  String get language;
  @override
  List<String> get hints;

  /// Create a copy of CodeSnippetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeSnippetModelImplCopyWith<_$CodeSnippetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonMetadataModel _$LessonMetadataModelFromJson(Map<String, dynamic> json) {
  return _LessonMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$LessonMetadataModel {
  String get author => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  Map<String, dynamic> get additionalInfo => throw _privateConstructorUsedError;

  /// Serializes this LessonMetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonMetadataModelCopyWith<LessonMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonMetadataModelCopyWith<$Res> {
  factory $LessonMetadataModelCopyWith(
          LessonMetadataModel value, $Res Function(LessonMetadataModel) then) =
      _$LessonMetadataModelCopyWithImpl<$Res, LessonMetadataModel>;
  @useResult
  $Res call(
      {String author,
      DateTime created,
      String version,
      Map<String, dynamic> additionalInfo});
}

/// @nodoc
class _$LessonMetadataModelCopyWithImpl<$Res, $Val extends LessonMetadataModel>
    implements $LessonMetadataModelCopyWith<$Res> {
  _$LessonMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonMetadataModel
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
abstract class _$$LessonMetadataModelImplCopyWith<$Res>
    implements $LessonMetadataModelCopyWith<$Res> {
  factory _$$LessonMetadataModelImplCopyWith(_$LessonMetadataModelImpl value,
          $Res Function(_$LessonMetadataModelImpl) then) =
      __$$LessonMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      DateTime created,
      String version,
      Map<String, dynamic> additionalInfo});
}

/// @nodoc
class __$$LessonMetadataModelImplCopyWithImpl<$Res>
    extends _$LessonMetadataModelCopyWithImpl<$Res, _$LessonMetadataModelImpl>
    implements _$$LessonMetadataModelImplCopyWith<$Res> {
  __$$LessonMetadataModelImplCopyWithImpl(_$LessonMetadataModelImpl _value,
      $Res Function(_$LessonMetadataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? created = null,
    Object? version = null,
    Object? additionalInfo = null,
  }) {
    return _then(_$LessonMetadataModelImpl(
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
class _$LessonMetadataModelImpl implements _LessonMetadataModel {
  const _$LessonMetadataModelImpl(
      {required this.author,
      required this.created,
      required this.version,
      final Map<String, dynamic> additionalInfo = const {}})
      : _additionalInfo = additionalInfo;

  factory _$LessonMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonMetadataModelImplFromJson(json);

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
    return 'LessonMetadataModel(author: $author, created: $created, version: $version, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonMetadataModelImpl &&
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

  /// Create a copy of LessonMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonMetadataModelImplCopyWith<_$LessonMetadataModelImpl> get copyWith =>
      __$$LessonMetadataModelImplCopyWithImpl<_$LessonMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _LessonMetadataModel implements LessonMetadataModel {
  const factory _LessonMetadataModel(
      {required final String author,
      required final DateTime created,
      required final String version,
      final Map<String, dynamic> additionalInfo}) = _$LessonMetadataModelImpl;

  factory _LessonMetadataModel.fromJson(Map<String, dynamic> json) =
      _$LessonMetadataModelImpl.fromJson;

  @override
  String get author;
  @override
  DateTime get created;
  @override
  String get version;
  @override
  Map<String, dynamic> get additionalInfo;

  /// Create a copy of LessonMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonMetadataModelImplCopyWith<_$LessonMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
