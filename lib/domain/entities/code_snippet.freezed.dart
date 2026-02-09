// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_snippet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeSnippet _$CodeSnippetFromJson(Map<String, dynamic> json) {
  return _CodeSnippet.fromJson(json);
}

/// @nodoc
mixin _$CodeSnippet {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get hints => throw _privateConstructorUsedError;

  /// Serializes this CodeSnippet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeSnippetCopyWith<CodeSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSnippetCopyWith<$Res> {
  factory $CodeSnippetCopyWith(
          CodeSnippet value, $Res Function(CodeSnippet) then) =
      _$CodeSnippetCopyWithImpl<$Res, CodeSnippet>;
  @useResult
  $Res call(
      {String id,
      String title,
      String code,
      String language,
      List<String> hints});
}

/// @nodoc
class _$CodeSnippetCopyWithImpl<$Res, $Val extends CodeSnippet>
    implements $CodeSnippetCopyWith<$Res> {
  _$CodeSnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeSnippet
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
abstract class _$$CodeSnippetImplCopyWith<$Res>
    implements $CodeSnippetCopyWith<$Res> {
  factory _$$CodeSnippetImplCopyWith(
          _$CodeSnippetImpl value, $Res Function(_$CodeSnippetImpl) then) =
      __$$CodeSnippetImplCopyWithImpl<$Res>;
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
class __$$CodeSnippetImplCopyWithImpl<$Res>
    extends _$CodeSnippetCopyWithImpl<$Res, _$CodeSnippetImpl>
    implements _$$CodeSnippetImplCopyWith<$Res> {
  __$$CodeSnippetImplCopyWithImpl(
      _$CodeSnippetImpl _value, $Res Function(_$CodeSnippetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeSnippet
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
    return _then(_$CodeSnippetImpl(
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
class _$CodeSnippetImpl implements _CodeSnippet {
  const _$CodeSnippetImpl(
      {required this.id,
      required this.title,
      required this.code,
      required this.language,
      final List<String> hints = const []})
      : _hints = hints;

  factory _$CodeSnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSnippetImplFromJson(json);

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
    return 'CodeSnippet(id: $id, title: $title, code: $code, language: $language, hints: $hints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSnippetImpl &&
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

  /// Create a copy of CodeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSnippetImplCopyWith<_$CodeSnippetImpl> get copyWith =>
      __$$CodeSnippetImplCopyWithImpl<_$CodeSnippetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSnippetImplToJson(
      this,
    );
  }
}

abstract class _CodeSnippet implements CodeSnippet {
  const factory _CodeSnippet(
      {required final String id,
      required final String title,
      required final String code,
      required final String language,
      final List<String> hints}) = _$CodeSnippetImpl;

  factory _CodeSnippet.fromJson(Map<String, dynamic> json) =
      _$CodeSnippetImpl.fromJson;

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

  /// Create a copy of CodeSnippet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeSnippetImplCopyWith<_$CodeSnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
