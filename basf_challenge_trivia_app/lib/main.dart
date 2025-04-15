import 'package:basf_challenge_trivia_app/di/di_setup.dart';
import 'package:basf_challenge_trivia_app/ui/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependencies
  await setupDependencies();

  runApp(const MyApp());
}
