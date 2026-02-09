part of 'lesson_list_bloc.dart';

abstract class LessonListEvent extends Equatable {
  const LessonListEvent();

  @override
  List<Object?> get props => [];
}

class LessonListLoadRequested extends LessonListEvent {}

class LessonListRefreshRequested extends LessonListEvent {}

class LessonListLessonSelected extends LessonListEvent {
  final String lessonId;

  const LessonListLessonSelected(this.lessonId);

  @override
  List<Object?> get props => [lessonId];
}
