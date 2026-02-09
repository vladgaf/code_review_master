import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Code Review Master';
  static const String appVersion = '1.0.0';
  static const String dataFolderName = 'CodeReviewMasterData';

  // Поддерживаемые языки программирования
  static const List<String> supportedLanguages = [
    'kotlin',
    'python',
    'dart',
    'java',
    'javascript',
    'typescript',
    'cpp',
    'csharp',
  ];

  // Уровни сложности
  static const Map<String, String> difficultyLabels = {
    'beginner': 'Начинающий',
    'intermediate': 'Средний',
    'advanced': 'Продвинутый',
  };

  static const Map<String, Color> difficultyColors = {
    'beginner': Colors.green,
    'intermediate': Colors.orange,
    'advanced': Colors.red,
  };
}
