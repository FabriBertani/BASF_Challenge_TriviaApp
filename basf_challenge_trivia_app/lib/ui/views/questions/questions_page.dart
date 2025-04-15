import 'package:basf_challenge_trivia_app/core/bloc/questions/questions_bloc.dart';
import 'package:basf_challenge_trivia_app/ui/views/questions/questions_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<QuestionsBloc>()..add(const QuestionsEvent.initial()),
      child: const QuestionsView(),
    );
  }
}
