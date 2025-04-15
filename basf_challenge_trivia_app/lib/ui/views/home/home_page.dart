import 'package:basf_challenge_trivia_app/core/bloc/bottom_nav/bottom_nav_cubit.dart';
import 'package:basf_challenge_trivia_app/ui/views/favorites/favorites_page.dart';
import 'package:basf_challenge_trivia_app/ui/views/questions/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController();

    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, pageIndex) {
        return Scaffold(
          appBar: AppBar(elevation: 4, title: Text('Flutter Bloc Base Project')),
          body: PageView(
            controller: pageViewController,
            children: const <Widget>[QuestionsPage(), FavoritesPage()],
            onPageChanged: (index) {
              pageIndex = index;
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: HexColor('#090909'),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.question_mark), label: 'Questions'),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
            ],
            currentIndex: pageIndex,
            onTap: (int index) {
              pageViewController.animateToPage(
                index,
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceOut,
              );
              context.read<BottomNavCubit>().selectTab(index);
            },
            fixedColor: Colors.white,
            unselectedItemColor: Colors.grey,
          ),
        );
      },
    );
  }
}
