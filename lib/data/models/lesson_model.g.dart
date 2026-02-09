// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonModelImpl _$$LessonModelImplFromJson(Map<String, dynamic> json) =>
    _$LessonModelImpl(
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
          .map((e) => CodeSnippetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceSolutions:
          Map<String, String>.from(json['reference_solutions'] as Map),
      metadata: LessonMetadataModel.fromJson(
          json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LessonModelImplToJson(_$LessonModelImpl instance) =>
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

_$CodeSnippetModelImpl _$$CodeSnippetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CodeSnippetModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      code: json['code'] as String,
      language: json['language'] as String,
      hints:
          (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$CodeSnippetModelImplToJson(
        _$CodeSnippetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'language': instance.language,
      'hints': instance.hints,
    };

_$LessonMetadataModelImpl _$$LessonMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonMetadataModelImpl(
      author: json['author'] as String,
      created: DateTime.parse(json['created'] as String),
      version: json['version'] as String,
      additionalInfo:
          json['additional_info'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$LessonMetadataModelImplToJson(
        _$LessonMetadataModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'created': instance.created.toIso8601String(),
      'version': instance.version,
      'additional_info': instance.additionalInfo,
    };
