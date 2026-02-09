part of 'lesson_list_bloc.dart';

abstract class LessonListState extends Equatable {
  const LessonListState();

  @override
  List<Object?> get props => [];
}

class LessonListInitial extends LessonListState {}

class LessonListLoading extends LessonListState {}

class LessonListLoaded extends LessonListState {
  final List<Lesson> lessons;
  final Lesson? selectedLesson;

  const LessonListLoaded({
    required this.lessons,
    this.selectedLesson,
  });

  LessonListLoaded copyWith({
    List<Lesson>? lessons,
    Lesson? selectedLesson,
  }) {
    return LessonListLoaded(
      lessons: lessons ?? this.lessons,
      selectedLesson: selectedLesson ?? this.selectedLesson,
    );
  }

  @override
  List<Object?> get props => [lessons, selectedLesson];
}

class LessonListError extends LessonListState {
  final String message;

  const LessonListError({required this.message});

  @override
  List<Object?> get props => [message];
}
