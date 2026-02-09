part of 'lesson_session_bloc.dart';

abstract class LessonSessionState extends Equatable {
  const LessonSessionState();

  @override
  List<Object?> get props => [];
}

class LessonSessionInitial extends LessonSessionState {}

class LessonSessionInProgress extends LessonSessionState {
  final Lesson lesson;
  final int currentIndex;
  final Map<String, String> answers;
  final Map<String, bool> completedSnippets;

  const LessonSessionInProgress({
    required this.lesson,
    required this.currentIndex,
    required this.answers,
    required this.completedSnippets,
  });

  CodeSnippet get currentSnippet => lesson.codeSnippets[currentIndex];

  LessonSessionInProgress copyWith({
    Lesson? lesson,
    int? currentIndex,
    Map<String, String>? answers,
    Map<String, bool>? completedSnippets,
  }) {
    return LessonSessionInProgress(
      lesson: lesson ?? this.lesson,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
      completedSnippets: completedSnippets ?? this.completedSnippets,
    );
  }

  @override
  List<Object?> get props => [
        lesson,
        currentIndex,
        answers,
        completedSnippets,
      ];
}

class LessonSessionCompleted extends LessonSessionState {
  final Lesson lesson;
  final Map<String, String> answers;
  final Map<String, bool> completedSnippets;

  const LessonSessionCompleted({
    required this.lesson,
    required this.answers,
    required this.completedSnippets,
  });

  @override
  List<Object?> get props => [lesson, answers, completedSnippets];
}
