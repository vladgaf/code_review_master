import 'package:flutter/material.dart';

class AppProgressIndicator extends StatelessWidget {
  final int current;
  final int total;
  final int completedCount;

  const AppProgressIndicator({
    super.key,
    required this.current,
    required this.total,
    required this.completedCount,
  });

  @override
  Widget build(BuildContext context) {
    final progress = current / total;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Текстовый прогресс
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Прогресс урока',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '$current из $total',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Полоса прогресса
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[200],
            color: _getProgressColor(progress),
            minHeight: 12,
            borderRadius: BorderRadius.circular(6),
          ),

          const SizedBox(height: 4),

          // Дополнительная информация
          Text(
            'Выполнено заданий: $completedCount/$total',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }

  Color _getProgressColor(double progress) {
    if (progress >= 0.8) return Colors.green;
    if (progress >= 0.5) return Colors.orange;
    return Colors.blue;
  }
}
