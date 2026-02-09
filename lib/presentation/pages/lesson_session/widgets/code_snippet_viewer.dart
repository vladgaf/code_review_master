import 'package:flutter/material.dart';

import '../../../../core/utils/syntax_highlighter.dart';
import '../../../../domain/entities/code_snippet.dart';

class CodeSnippetViewer extends StatelessWidget {
  final CodeSnippet snippet;
  final bool showCopyButton;

  const CodeSnippetViewer({
    super.key,
    required this.snippet,
    this.showCopyButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Заголовок
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  snippet.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                if (showCopyButton)
                  IconButton(
                    icon: const Icon(Icons.content_copy),
                    onPressed: () => _copyToClipboard(context),
                    tooltip: 'Копировать код',
                  ),
              ],
            ),
          ),
          // Код
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CodeSyntaxHighlighter.highlightCode(
              code: snippet.code,
              language: snippet.language,
              isDark: true,
            ),
          ),
          // Подсказки
          if (snippet.hints.isNotEmpty) ...[
            const Divider(height: 0),
            ExpansionTile(
              title: const Text('Подсказки'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: snippet.hints
                        .map((hint) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text('• $hint'),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  void _copyToClipboard(BuildContext context) {
    // TODO: Реализовать копирование
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Код скопирован')),
    );
  }
}
