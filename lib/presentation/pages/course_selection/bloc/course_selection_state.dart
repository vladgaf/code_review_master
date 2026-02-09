part of 'course_selection_bloc.dart';

abstract class CourseSelectionState extends Equatable {
  const CourseSelectionState();

  @override
  List<Object?> get props => [];
}

class CourseSelectionInitial extends CourseSelectionState {}

class CourseSelectionLoading extends CourseSelectionState {}

class CourseSelectionLoaded extends CourseSelectionState {
  final List<String> courses;

  const CourseSelectionLoaded({required this.courses});

  @override
  List<Object?> get props => [courses];
}

class CourseSelectionError extends CourseSelectionState {
  final String message;

  const CourseSelectionError({required this.message});

  @override
  List<Object?> get props => [message];
}
