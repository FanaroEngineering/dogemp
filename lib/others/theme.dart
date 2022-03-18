import 'package:flutter/material.dart';

abstract class DogempTheme {
  static const ThemeMode initialThemeMode = ThemeMode.dark;

  static final ThemeData lightTheme = ThemeData(
    dataTableTheme: const DataTableThemeData(
      headingTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.black.withOpacity(0.075),
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
    iconTheme: const IconThemeData(
      color: Colors.black,
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
        primary: Colors.white.withOpacity(0.825),
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

  static Brightness currentTheme(BuildContext context) => Theme.of(context).brightness;

  static bool currentThemeIsLight(BuildContext context) =>
      currentTheme(context) == Brightness.light;

  static MaterialStateProperty<Color?>? rowColor(
    BuildContext context,
    int index,
  ) =>
      MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> _) =>
          currentThemeIsLight(context)
              ? (index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1))
              : (index.isOdd ? Colors.grey.withOpacity(0.1) : Colors.white.withOpacity(0.125)));
}
