import 'package:basf_challenge_trivia_app/core/bloc/questions/questions_bloc.dart';
import 'package:basf_challenge_trivia_app/ui/views/favorites/favorites_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<QuestionsBloc>()..add(const QuestionsEvent.initial()),
      child: const FavoritesView(),
    );
  }
}
