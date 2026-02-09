import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:code_review_master/domain/entities/lesson.dart';

import '../../domain/entities/code_snippet.dart';
import 'lesson_session/widgets/code_snippet_viewer.dart';

class SessionSummaryPage extends StatelessWidget {
  final Lesson lesson;
  final Map<String, String> answers;
  final Map<String, bool> completedSnippets;

  const SessionSummaryPage({
    super.key,
    required this.lesson,
    required this.answers,
    required this.completedSnippets,
  });

  @override
  Widget build(BuildContext context) {
    final completedCount = completedSnippets.values.where((c) => c).length;
    final totalCount = lesson.codeSnippets.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Сводка урока'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => _shareSummary(context),
            tooltip: 'Поделиться',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Статистика
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Урок завершён!',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Вы выполнили $completedCount из $totalCount заданий',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    LinearProgressIndicator(
                      value: completedCount / totalCount,
                      backgroundColor: Colors.grey[200],
                      color: _getProgressColor(completedCount, totalCount),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Подробная сводка по каждому сниппету
            Text(
              'Подробные ответы:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),

            ...lesson.codeSnippets.map((snippet) {
              return _SnippetSummaryCard(
                snippet: snippet,
                studentAnswer: answers[snippet.id] ?? 'Не отвечено',
                referenceSolution: lesson.referenceSolutions[snippet.id] ?? '',
              );
            }),

            const SizedBox(height: 32),

            // Кнопки действий
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.home),
                label: const Text('Вернуться к курсам'),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getProgressColor(int completed, int total) {
    final ratio = completed / total;

    if (ratio >= 0.8) return Colors.green;
    if (ratio >= 0.5) return Colors.orange;
    return Colors.red;
  }

  Future<void> _shareSummary(BuildContext context) async {
    final completedCount = completedSnippets.values.where((c) => c).length;
    final totalCount = lesson.codeSnippets.length;

    final shareText = '''
🎯 Урок "${lesson.title}" завершён!

📊 Статистика: $completedCount/$totalCount заданий выполнено
⏱️ Время: ${lesson.estimatedTime}
📈 Сложность: ${lesson.difficulty}

--- Ответы ---
${lesson.codeSnippets.map((snippet) {
      final answer = answers[snippet.id] ?? 'Не отвечено';
      return '${snippet.title}: $answer';
    }).join('\n\n')}
''';

    await Share.share(shareText);
  }
}

class _SnippetSummaryCard extends StatelessWidget {
  final CodeSnippet snippet;
  final String studentAnswer;
  final String referenceSolution;

  const _SnippetSummaryCard({
    required this.snippet,
    required this.studentAnswer,
    required this.referenceSolution,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              snippet.title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: 12),

            // Код
            Text(
              'Код:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            CodeSnippetViewer(
              snippet: snippet,
            ),

            const SizedBox(height: 12),

            // Ответ ученика
            Text(
              'Ваш ответ:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(studentAnswer),
            ),

            const SizedBox(height: 12),

            // Эталонный ответ
            ExpansionTile(
              title: Text(
                'Эталонный ответ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    referenceSolution,
                    style: TextStyle(
                      color: Colors.green[700],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
