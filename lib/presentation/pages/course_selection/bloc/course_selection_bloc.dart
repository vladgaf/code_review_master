import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';

part 'course_selection_event.dart';
part 'course_selection_state.dart';

// ОСТАВЛЯЕМ @injectable здесь!
@injectable
class CourseSelectionBloc
    extends Bloc<CourseSelectionEvent, CourseSelectionState> {
  final CourseRepository _repository;

  CourseSelectionBloc(this._repository) : super(CourseSelectionInitial()) {
    on<CourseSelectionLoadRequested>(_onLoadRequested);
    on<CourseSelectionRefreshRequested>(_onRefreshRequested);
    on<CourseSelectionImportRequested>(_onImportRequested);
  }

  Future<void> _onLoadRequested(
    CourseSelectionLoadRequested event,
    Emitter<CourseSelectionState> emit,
  ) async {
    emit(CourseSelectionLoading());

    try {
      final courses = await _repository.getAvailableCourses();
      emit(CourseSelectionLoaded(courses: courses));
    } catch (e) {
      emit(CourseSelectionError(message: 'Не удалось загрузить курсы: $e'));
    }
  }

  Future<void> _onRefreshRequested(
    CourseSelectionRefreshRequested event,
    Emitter<CourseSelectionState> emit,
  ) async {
    try {
      final courses = await _repository.getAvailableCourses();
      emit(CourseSelectionLoaded(courses: courses));
    } catch (e) {
      emit(CourseSelectionError(message: 'Ошибка обновления: $e'));
    }
  }

  Future<void> _onImportRequested(
    CourseSelectionImportRequested event,
    Emitter<CourseSelectionState> emit,
  ) async {
    try {
      final success = await _repository.importCourse(event.sourcePath);
      if (success) {
        add(CourseSelectionRefreshRequested());
      } else {
        emit(CourseSelectionError(message: 'Не удалось импортировать курс'));
      }
    } catch (e) {
      emit(CourseSelectionError(message: 'Ошибка импорта: $e'));
    }
  }
}
