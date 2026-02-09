import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/presentation/pages/lesson_session/bloc/lesson_session_bloc.dart';
import 'package:code_review_master/presentation/pages/lesson_session/widgets/code_snippet_viewer.dart';
import 'package:code_review_master/presentation/pages/lesson_session/widgets/answer_input_field.dart';
import 'package:code_review_master/presentation/pages/session_summary/session_summary_page.dart';

import '../../../domain/entities/code_snippet.dart';

class LessonSessionPage extends StatefulWidget {
  final Lesson lesson;

  const LessonSessionPage({super.key, required this.lesson});

  @override
  State<LessonSessionPage> createState() => _LessonSessionPageState();
}

class _LessonSessionPageState extends State<LessonSessionPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LessonSessionBloc(widget.lesson)..add(LessonSessionStarted()),
      child: BlocListener<LessonSessionBloc, LessonSessionState>(
        listener: (context, state) {
          if (state is LessonSessionCompleted) {
            _navigateToSummary(context, state);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.lesson.title),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: BlocBuilder<LessonSessionBloc, LessonSessionState>(
            builder: (context, state) {
              return switch (state) {
                LessonSessionInitial() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                LessonSessionInProgress(
                  :final lesson,
                  :final currentIndex,
                  :final answers,
                  :final completedSnippets,
                  :final currentSnippet,
                ) =>
                  _SessionView(
                    lesson: lesson,
                    currentIndex: currentIndex,
                    answers: answers,
                    completedSnippets: completedSnippets,
                    currentSnippet: currentSnippet,
                  ),
                LessonSessionCompleted() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                // TODO: Handle this case.
                LessonSessionState() => throw UnimplementedError(),
              };
            },
          ),
        ),
      ),
    );
  }

  void _navigateToSummary(BuildContext context, LessonSessionCompleted state) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => SessionSummaryPage(
          lesson: state.lesson,
          answers: state.answers,
          completedSnippets: state.completedSnippets,
        ),
      ),
    );
  }
}

class _SessionView extends StatelessWidget {
  final Lesson lesson;
  final int currentIndex;
  final Map<String, String> answers;
  final Map<String, bool> completedSnippets;
  final CodeSnippet currentSnippet;

  const _SessionView({
    required this.lesson,
    required this.currentIndex,
    required this.answers,
    required this.completedSnippets,
    required this.currentSnippet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Прогресс
          _ProgressIndicator(
            current: currentIndex + 1,
            total: lesson.codeSnippets.length,
            completed: completedSnippets.length,
          ),
          const SizedBox(height: 16),
          // Код
          Expanded(
            flex: 2,
            child: CodeSnippetViewer(snippet: currentSnippet),
          ),
          const SizedBox(height: 16),
          // Ответ
          Expanded(
            child: AnswerInputField(
              initialValue: answers[currentSnippet.id] ?? '',
              onChanged: (value) {
                context.read<LessonSessionBloc>().add(
                      LessonSessionAnswerUpdated(
                        snippetId: currentSnippet.id,
                        answer: value,
                      ),
                    );
              },
              onSubmitted: () {
                context.read<LessonSessionBloc>().add(
                      LessonSessionCompleteCurrent(),
                    );
              },
            ),
          ),
          const SizedBox(height: 16),
          // Навигация
          _NavigationButtons(
            currentIndex: currentIndex,
            total: lesson.codeSnippets.length,
            onPrevious: () {
              context.read<LessonSessionBloc>().add(
                    LessonSessionPreviousRequested(),
                  );
            },
            onNext: () {
              if (currentIndex < lesson.codeSnippets.length - 1) {
                context.read<LessonSessionBloc>().add(
                      LessonSessionNextRequested(),
                    );
              } else {
                context.read<LessonSessionBloc>().add(
                      LessonSessionCompleteCurrent(),
                    );
              }
            },
          ),
        ],
      ),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  final int current;
  final int total;
  final int completed;

  const _ProgressIndicator({
    required this.current,
    required this.total,
    required this.completed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Прогресс: $current/$total',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Выполнено: $completed',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: current / total,
          backgroundColor: Colors.grey[200],
        ),
      ],
    );
  }
}

class _NavigationButtons extends StatelessWidget {
  final int currentIndex;
  final int total;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const _NavigationButtons({
    required this.currentIndex,
    required this.total,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.chevron_left),
          label: const Text('Назад'),
          onPressed: currentIndex > 0 ? onPrevious : null,
        ),
        Text(
          '${currentIndex + 1}/$total',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        ElevatedButton.icon(
          icon: currentIndex < total - 1
              ? const Icon(Icons.chevron_right)
              : const Icon(Icons.check),
          label: Text(currentIndex < total - 1 ? 'Далее' : 'Завершить'),
          onPressed: onNext,
        ),
      ],
    );
  }
}
