
import 'package:first_project_learningb/kernel/widget/menu.dart';
import 'package:first_project_learningb/kernel/widget/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/menu': (context) => const Menu(),
      },
    );
  }
}