import 'package:basf_challenge_trivia_app/core/constants/enums.dart';
import 'package:basf_challenge_trivia_app/core/models/questions/response/question_data.dart';
import 'package:basf_challenge_trivia_app/core/repository/question_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_bloc.freezed.dart';

part 'questions_event.dart';

part 'questions_state.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  final QuestionRepository _questionRepository;

  QuestionsBloc(this._questionRepository) : super(const QuestionsState()) {
    on<_InitialQuestionsEvent>(_initial);
  }

  Future<void> _initial(_InitialQuestionsEvent event, Emitter<QuestionsState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final questions = await _questionRepository.getQuestions();

    if (questions != null && questions.isNotEmpty) {
      emit(state.copyWith(status: BlocStatus.success, questions: questions));
    } else {
      emit(state.copyWith(status: BlocStatus.failure));
    }
  }
}
