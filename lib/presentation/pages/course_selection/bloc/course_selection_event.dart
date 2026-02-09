part of 'course_selection_bloc.dart';

abstract class CourseSelectionEvent extends Equatable {
  const CourseSelectionEvent();

  @override
  List<Object?> get props => [];
}

class CourseSelectionLoadRequested extends CourseSelectionEvent {}

class CourseSelectionRefreshRequested extends CourseSelectionEvent {}

class CourseSelectionImportRequested extends CourseSelectionEvent {
  final String sourcePath;

  const CourseSelectionImportRequested(this.sourcePath);

  @override
  List<Object?> get props => [sourcePath];
}
