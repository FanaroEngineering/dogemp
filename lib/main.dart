import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

import 'widgets/custom_scroll_behavior.dart';

void main() => runApp(const Dogemp());

@immutable
class Dogemp extends StatelessWidget {
  const Dogemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white.withOpacity(0.9),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16),
            primary: Colors.white.withOpacity(0.9),
            backgroundColor: Colors.black.withOpacity(0.76),
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      scrollBehavior: CustomScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
