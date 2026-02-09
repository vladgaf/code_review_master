import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseName;
  final VoidCallback onTap;
  final int lessonCount;

  const CourseCard({
    super.key,
    required this.courseName,
    required this.onTap,
    this.lessonCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Иконка курса
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: _getCourseColor(courseName),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _getCourseIcon(courseName),
                  color: Colors.white,
                  size: 24,
                ),
              ),

              const SizedBox(width: 16),

              // Информация о курсе
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseName.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getCourseDescription(courseName),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
              ),

              // Количество уроков
              if (lessonCount > 0) ...[
                Chip(
                  label: Text('$lessonCount ур.'),
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                ),
                const SizedBox(width: 8),
              ],

              // Стрелка
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCourseColor(String courseName) {
    switch (courseName.toLowerCase()) {
      case 'kotlin':
        return const Color(0xFF7F52FF);
      case 'python':
        return const Color(0xFF3776AB);
      case 'dart':
        return const Color(0xFF00B4AB);
      case 'javascript':
        return const Color(0xFFF7DF1E);
      case 'java':
        return const Color(0xFF007396);
      default:
        return const Color(0xFF007396);
      //TODO: fix context
      //return Theme.of(context).colorScheme.primary;
    }
  }

  IconData _getCourseIcon(String courseName) {
    switch (courseName.toLowerCase()) {
      case 'kotlin':
        return Icons.code;
      case 'python':
        return Icons.pix_sharp;
      case 'dart':
        return Icons.flutter_dash;
      case 'javascript':
        return Icons.javascript;
      case 'java':
        return Icons.coffee;
      default:
        return Icons.computer;
    }
  }

  String _getCourseDescription(String courseName) {
    switch (courseName.toLowerCase()) {
      case 'kotlin':
        return 'Kotlin, Ktor, Coroutines';
      case 'python':
        return 'Python, Django, FastAPI';
      case 'dart':
        return 'Dart, Flutter, Server';
      case 'javascript':
        return 'JavaScript, TypeScript, Node.js';
      case 'java':
        return 'Java, Spring, Android';
      default:
        return 'Программирование';
    }
  }
}
