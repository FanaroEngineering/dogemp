import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

import 'widgets/custom_scroll_behavior.dart';

void main() => runApp(const Dogemp());

@immutable
class Dogemp extends StatefulWidget {
  const Dogemp({Key? key}) : super(key: key);

  static const ThemeMode initialThemeMode = ThemeMode.dark;

  static final ThemeData lightTheme = ThemeData(
    dataTableTheme: const DataTableThemeData(
      headingTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
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
  );

  static final ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black.withOpacity(0.8),
    dataTableTheme: DataTableThemeData(
      headingTextStyle: TextStyle(
        color: Colors.white.withOpacity(0.7),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
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
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.5),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    ),
  );

  @override
  State<Dogemp> createState() => _DogempState();

  static Brightness currentTheme(BuildContext context) => Theme.of(context).brightness;

  static bool currentThemeIsLight(BuildContext context) =>
      currentTheme(context) == Brightness.light;

  static MaterialStateProperty<Color?>? rowColor(
    BuildContext context,
    int index,
  ) =>
      MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> _) =>
          Dogemp.currentThemeIsLight(context)
              ? (index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1))
              : (index.isOdd ? Colors.grey.withOpacity(0.1) : Colors.white.withOpacity(0.125)));

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
      theme: Dogemp.lightTheme,
      darkTheme: Dogemp.darkTheme,
      themeMode: _themeMode,
      scrollBehavior: CustomScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
