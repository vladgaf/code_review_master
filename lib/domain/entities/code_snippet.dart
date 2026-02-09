import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_snippet.freezed.dart';
part 'code_snippet.g.dart';

@freezed
class CodeSnippet with _$CodeSnippet {
  const factory CodeSnippet({
    required String id,
    required String title,
    required String code,
    required String language,
    @Default([]) List<String> hints,
  }) = _CodeSnippet;

  factory CodeSnippet.fromJson(Map<String, dynamic> json) =>
      _$CodeSnippetFromJson(json);
}
