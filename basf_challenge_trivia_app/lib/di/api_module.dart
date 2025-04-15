part of 'di_setup.dart';

void _registerApiModule() {
  _getIt.registerLazySingleton(() => ApiService());
}
