// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      difficulty: json['difficulty'] as String,
      estimatedTime: json['estimated_time'] as String,
      prerequisites: (json['prerequisites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      codeSnippets: (json['code_snippets'] as List<dynamic>)
          .map((e) => CodeSnippet.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceSolutions:
          Map<String, String>.from(json['reference_solutions'] as Map),
      metadata:
          LessonMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'estimated_time': instance.estimatedTime,
      'prerequisites': instance.prerequisites,
      'code_snippets': instance.codeSnippets.map((e) => e.toJson()).toList(),
      'reference_solutions': instance.referenceSolutions,
      'metadata': instance.metadata.toJson(),
    };
