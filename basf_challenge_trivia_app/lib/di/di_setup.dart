import 'package:basf_challenge_trivia_app/core/bloc/questions/questions_bloc.dart';
import 'package:basf_challenge_trivia_app/core/repository/question_repository.dart';
import 'package:basf_challenge_trivia_app/core/routing/navigation_service.dart';
import 'package:basf_challenge_trivia_app/core/service/api_service.dart';
import 'package:get_it/get_it.dart';

part 'api_module.dart';
part 'repositories_module.dart';
part 'navigation_module.dart';
part 'bloc_module.dart';

final _getIt = GetIt.I;

Future<void> setupDependencies() async {
  // API Services Dependencies
  _registerApiModule();

  // Repositories Dependencies
  _registerRepositoriesModules();

  // Navigation
  _registerNavigationModule();

  // Blocs
  _registerBlocModules();
}
