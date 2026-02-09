import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_snippet.dart';
import 'lesson_metadata.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String title,
    required String description,
    required String difficulty,
    required String estimatedTime,
    @Default([]) List<String> prerequisites,
    required List<CodeSnippet> codeSnippets,
    required Map<String, String> referenceSolutions,
    required LessonMetadata metadata,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
