part of 'lesson_session_bloc.dart';

abstract class LessonSessionEvent extends Equatable {
  const LessonSessionEvent();

  @override
  List<Object?> get props => [];
}

class LessonSessionStarted extends LessonSessionEvent {}

class LessonSessionAnswerUpdated extends LessonSessionEvent {
  final String snippetId;
  final String answer;

  const LessonSessionAnswerUpdated({
    required this.snippetId,
    required this.answer,
  });

  @override
  List<Object?> get props => [snippetId, answer];
}

class LessonSessionNextRequested extends LessonSessionEvent {}

class LessonSessionPreviousRequested extends LessonSessionEvent {}

class LessonSessionCompleteCurrent extends LessonSessionEvent {}
