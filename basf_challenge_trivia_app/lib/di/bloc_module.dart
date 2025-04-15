part of 'di_setup.dart';

void _registerBlocModules() {
  _getIt.registerFactory(() => QuestionsBloc(_getIt<QuestionRepository>()));
}
