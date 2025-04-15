import 'package:basf_challenge_trivia_app/core/bloc/bottom_nav/bottom_nav_cubit.dart';
import 'package:basf_challenge_trivia_app/core/routing/navigation_service.dart';
import 'package:basf_challenge_trivia_app/core/routing/screen_router.dart';
import 'package:basf_challenge_trivia_app/ui/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => GetIt.I.get<BottomNavCubit>())],
      child: MaterialApp(
        title: 'Trivia App',
        navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        onGenerateRoute: ScreenRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
