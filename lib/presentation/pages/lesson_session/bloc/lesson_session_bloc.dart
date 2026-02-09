import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_review_master/domain/entities/lesson.dart';

import '../../../../domain/entities/code_snippet.dart';

part 'lesson_session_event.dart';
part 'lesson_session_state.dart';

class LessonSessionBloc extends Bloc<LessonSessionEvent, LessonSessionState> {
  final Lesson _lesson;

  LessonSessionBloc(this._lesson) : super(LessonSessionInitial()) {
    on<LessonSessionStarted>(_onStarted);
    on<LessonSessionAnswerUpdated>(_onAnswerUpdated);
    on<LessonSessionNextRequested>(_onNextRequested);
    on<LessonSessionPreviousRequested>(_onPreviousRequested);
    on<LessonSessionCompleteCurrent>(_onCompleteCurrent);
  }

  void _onStarted(
    LessonSessionStarted event,
    Emitter<LessonSessionState> emit,
  ) {
    emit(LessonSessionInProgress(
      lesson: _lesson,
      currentIndex: 0,
      answers: const {},
      completedSnippets: const {},
    ));
  }

  void _onAnswerUpdated(
    LessonSessionAnswerUpdated event,
    Emitter<LessonSessionState> emit,
  ) {
    if (state is LessonSessionInProgress) {
      final currentState = state as LessonSessionInProgress;
      final updatedAnswers = Map<String, String>.from(currentState.answers)
        ..[event.snippetId] = event.answer;

      emit(currentState.copyWith(answers: updatedAnswers));
    }
  }

  void _onNextRequested(
    LessonSessionNextRequested event,
    Emitter<LessonSessionState> emit,
  ) {
    if (state is LessonSessionInProgress) {
      final currentState = state as LessonSessionInProgress;
      final nextIndex = currentState.currentIndex + 1;

      if (nextIndex < _lesson.codeSnippets.length) {
        emit(currentState.copyWith(currentIndex: nextIndex));
      }
    }
  }

  void _onPreviousRequested(
    LessonSessionPreviousRequested event,
    Emitter<LessonSessionState> emit,
  ) {
    if (state is LessonSessionInProgress) {
      final currentState = state as LessonSessionInProgress;
      final prevIndex = currentState.currentIndex - 1;

      if (prevIndex >= 0) {
        emit(currentState.copyWith(currentIndex: prevIndex));
      }
    }
  }

  void _onCompleteCurrent(
    LessonSessionCompleteCurrent event,
    Emitter<LessonSessionState> emit,
  ) {
    if (state is LessonSessionInProgress) {
      final currentState = state as LessonSessionInProgress;
      final completedSnippets = Map<String, bool>.from(
        currentState.completedSnippets,
      )..[currentState.currentSnippet.id] = true;

      final nextIndex = currentState.currentIndex + 1;

      if (nextIndex >= _lesson.codeSnippets.length) {
        // Все сниппеты завершены
        emit(LessonSessionCompleted(
          lesson: _lesson,
          answers: currentState.answers,
          completedSnippets: completedSnippets,
        ));
      } else {
        // Переходим к следующему сниппету
        emit(currentState.copyWith(
          completedSnippets: completedSnippets,
          currentIndex: nextIndex,
        ));
      }
    }
  }
}
