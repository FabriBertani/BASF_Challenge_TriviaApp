import 'package:basf_challenge_trivia_app/core/bloc/questions/questions_bloc.dart';
import 'package:basf_challenge_trivia_app/core/constants/enums.dart';
import 'package:basf_challenge_trivia_app/ui/widgets/empty_view.dart';
import 'package:basf_challenge_trivia_app/ui/widgets/error_view.dart';
import 'package:basf_challenge_trivia_app/ui/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: BlocBuilder<QuestionsBloc, QuestionsState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case BlocStatus.initial:
              return const EmptyView();
            case BlocStatus.loading:
              return const LoadingIndicator();
            case BlocStatus.failure:
              return const ErrorView();
            case BlocStatus.success:
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[Center(child: Text('Questions', style: theme.textTheme.headlineSmall))],
                ),
              );
          }
        },
      ),
    );
  }
}
