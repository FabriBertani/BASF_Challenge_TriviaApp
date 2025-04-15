part of 'di_setup.dart';

void _registerRepositoriesModules() {
  _getIt.registerLazySingleton(() => QuestionRepository(_getIt<ApiService>()));
}
