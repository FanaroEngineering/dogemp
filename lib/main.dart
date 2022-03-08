import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

import 'widgets/custom_scroll_behavior.dart';

void main() => runApp(const Dogemp());

@immutable
class Dogemp extends StatefulWidget {
  const Dogemp({Key? key}) : super(key: key);

  static const ThemeMode initialThemeMode = ThemeMode.dark;

  @override
  State<Dogemp> createState() => _DogempState();

  /// Comes from [this answer](https://stackoverflow.com/a/67714404/4756173)
  static _DogempState? of(BuildContext context) => context.findAncestorStateOfType<_DogempState>();
}

class _DogempState extends State<Dogemp> {
  ThemeMode _themeMode = Dogemp.initialThemeMode;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black.withOpacity(0.05),
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
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
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
      themeMode: _themeMode,
      scrollBehavior: CustomScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
