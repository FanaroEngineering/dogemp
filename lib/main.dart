import 'package:flutter/material.dart';

import 'others/theme.dart';

import 'screens/home_screen.dart';

import 'widgets/custom_scroll_behavior.dart';

void main() => runApp(const Dogemp());

@immutable
class Dogemp extends StatefulWidget {
  const Dogemp({Key? key}) : super(key: key);

  @override
  State<Dogemp> createState() => _DogempState();

  /// Comes from [this answer](https://stackoverflow.com/a/67714404/4756173)
  static _DogempState? of(BuildContext context) => context.findAncestorStateOfType<_DogempState>();
}

class _DogempState extends State<Dogemp> {
  ThemeMode _themeMode = DogempTheme.initialThemeMode;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: DogempTheme.lightTheme,
      darkTheme: DogempTheme.darkTheme,
      themeMode: _themeMode,
      scrollBehavior: CustomScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
