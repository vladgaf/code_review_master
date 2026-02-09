import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel with _$LessonModel {
  const factory LessonModel({
    required String id,
    required String title,
    required String description,
    required String difficulty,
    required String estimatedTime,
    @Default([]) List<String> prerequisites,
    required List<CodeSnippetModel> codeSnippets,
    required Map<String, String> referenceSolutions,
    required LessonMetadataModel metadata,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}

@freezed
class CodeSnippetModel with _$CodeSnippetModel {
  const factory CodeSnippetModel({
    required String id,
    required String title,
    required String code,
    required String language,
    @Default([]) List<String> hints,
  }) = _CodeSnippetModel;

  factory CodeSnippetModel.fromJson(Map<String, dynamic> json) =>
      _$CodeSnippetModelFromJson(json);
}

@freezed
class LessonMetadataModel with _$LessonMetadataModel {
  const factory LessonMetadataModel({
    required String author,
    required DateTime created,
    required String version,
    @Default({}) Map<String, dynamic> additionalInfo,
  }) = _LessonMetadataModel;

  factory LessonMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$LessonMetadataModelFromJson(json);
}
