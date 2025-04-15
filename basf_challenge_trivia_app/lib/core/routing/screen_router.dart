import 'package:basf_challenge_trivia_app/core/constants/page_routes.dart';
import 'package:basf_challenge_trivia_app/ui/views/home/home_page.dart';
import 'package:flutter/material.dart';

class ScreenRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))),
        );
    }
  }
}
