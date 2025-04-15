part of 'questions_bloc.dart';

@freezed
class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<QuestionData>? questions,
  }) = _QuestionsState;
}
