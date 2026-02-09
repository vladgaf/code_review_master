import 'package:flutter/material.dart';
import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/core/constants/app_constants.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  final VoidCallback onTap;
  final bool showCourseName;

  const LessonCard({
    super.key,
    required this.lesson,
    required this.onTap,
    this.showCourseName = false,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      lesson.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),

                  // Сложность
                  Chip(
                    label: Text(
                      AppConstants.difficultyLabels[lesson.difficulty] ??
                          lesson.difficulty,
                      style: const TextStyle(fontSize: 11),
                    ),
                    backgroundColor:
                        _getDifficultyColor(lesson.difficulty).withOpacity(0.2),
                    labelStyle: TextStyle(
                      color: _getDifficultyColor(lesson.difficulty),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Описание
              Text(
                lesson.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: 12),

              // Мета-информация
              Row(
                children: [
                  // Время
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 16,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        lesson.estimatedTime,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),

                  const SizedBox(width: 16),

                  // Количество заданий
                  Row(
                    children: [
                      Icon(
                        Icons.list_alt,
                        size: 16,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${lesson.codeSnippets.length} заданий',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),

                  const Spacer(),

                  // Стрелка
                  Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    return AppConstants.difficultyColors[difficulty] ?? Colors.grey;
  }
}
