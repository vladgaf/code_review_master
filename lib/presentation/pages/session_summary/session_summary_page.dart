import 'package:flutter/material.dart';
import 'package:code_review_master/domain/entities/lesson.dart';

import '../../../core/utils/syntax_highlighter.dart';
import '../../../domain/entities/code_snippet.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
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
                      '🎉 Урок завершён!',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Вы выполнили $completedCount из $totalCount заданий',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    LinearProgressIndicator(
                      value: completedCount / totalCount,
                      backgroundColor: Colors.grey[200],
                      color: _getProgressColor(completedCount / totalCount),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Ответы
            Text(
              'Ваши ответы:',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...lesson.codeSnippets.map((snippet) {
              return _SnippetSummary(
                snippet: snippet,
                studentAnswer: answers[snippet.id] ?? 'Нет ответа',
                referenceAnswer: lesson.referenceSolutions[snippet.id] ?? '',
              );
            }),
            const SizedBox(height: 32),
            // Кнопки
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

  Color _getProgressColor(double progress) {
    if (progress >= 0.8) return Colors.green;
    if (progress >= 0.5) return Colors.orange;
    return Colors.blue;
  }
}

class _SnippetSummary extends StatelessWidget {
  final CodeSnippet snippet;
  final String studentAnswer;
  final String referenceAnswer;

  const _SnippetSummary({
    required this.snippet,
    required this.studentAnswer,
    required this.referenceAnswer,
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
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            // Код
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width - 32,
                ),
                child: CodeSyntaxHighlighter.highlightCode(
                  code: snippet.code,
                  language: snippet.language,
                  isDark: true,
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Ответ ученика
            Text(
              'Ваш ответ:',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(studentAnswer),
            ),
            const SizedBox(height: 12),
            // Эталонный ответ
            ExpansionTile(
              title: Text(
                'Эталонный ответ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(referenceAnswer),
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
