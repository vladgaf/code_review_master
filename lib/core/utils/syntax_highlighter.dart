import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/dracula.dart';

class CodeSyntaxHighlighter {
  static Map<String, Map<String, TextStyle>> themes = {
    'light': githubTheme,
    'dark': draculaTheme,
  };

  static Widget highlightCode({
    required String code,
    required String language,
    bool isDark = false,
    EdgeInsets padding = const EdgeInsets.all(12),
  }) {
    final theme = isDark ? themes['dark']! : themes['light']!;

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme['root']?.backgroundColor ?? Colors.grey[100],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: HighlightView(
          code,
          language: language,
          theme: theme,
          padding: EdgeInsets.zero,
          textStyle: const TextStyle(
            fontFamily: 'FiraCode',
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  static String detectLanguage(String code) {
    // Простая эвристика для определения языка
    if (code.contains('fun ') && code.contains('val ') ||
        code.contains('var ')) {
      return 'kotlin';
    } else if (code.contains('def ') ||
        code.contains('import ') && code.contains(' as ')) {
      return 'python';
    } else if (code.contains('void ') && code.contains('{') ||
        code.contains('class ')) {
      return 'java';
    } else if (code.contains('function ') ||
        code.contains('const ') ||
        code.contains('let ')) {
      return 'javascript';
    } else if (code.contains('Widget ') ||
        code.contains('class ') && code.contains('extends')) {
      return 'dart';
    }

    return 'text';
  }
}
