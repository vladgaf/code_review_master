import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';

part 'lesson_list_event.dart';
part 'lesson_list_state.dart';

class LessonListBloc extends Bloc<LessonListEvent, LessonListState> {
  final CourseRepository _repository;
  final String _courseName;

  LessonListBloc(this._repository, this._courseName)
      : super(LessonListInitial()) {
    on<LessonListLoadRequested>(_onLoadRequested);
    on<LessonListRefreshRequested>(_onRefreshRequested);
    on<LessonListLessonSelected>(_onLessonSelected);
  }

  Future<void> _onLoadRequested(
    LessonListLoadRequested event,
    Emitter<LessonListState> emit,
  ) async {
    emit(LessonListLoading());

    try {
      final lessons = await _repository.getLessonsForCourse(_courseName);
      emit(LessonListLoaded(lessons: lessons));
    } catch (e) {
      emit(LessonListError(message: 'Не удалось загрузить уроки: $e'));
    }
  }

  Future<void> _onRefreshRequested(
    LessonListRefreshRequested event,
    Emitter<LessonListState> emit,
  ) async {
    try {
      final lessons = await _repository.getLessonsForCourse(_courseName);
      emit(LessonListLoaded(lessons: lessons));
    } catch (e) {
      emit(LessonListError(message: 'Ошибка обновления: $e'));
    }
  }

  void _onLessonSelected(
    LessonListLessonSelected event,
    Emitter<LessonListState> emit,
  ) {
    if (state is LessonListLoaded) {
      final currentState = state as LessonListLoaded;
      final selectedLesson = currentState.lessons.firstWhere(
        (lesson) => lesson.id == event.lessonId,
      );
      emit(currentState.copyWith(selectedLesson: selectedLesson));
    }
  }
}
