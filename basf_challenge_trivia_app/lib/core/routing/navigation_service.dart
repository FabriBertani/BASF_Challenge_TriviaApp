import 'package:flutter/material.dart';

class NavigationService {
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName, {arguments}) {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }
}
