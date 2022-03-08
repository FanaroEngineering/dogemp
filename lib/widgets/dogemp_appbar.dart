import 'package:flutter/material.dart';

import '../main.dart';

class DogempAppBarThemeSwitcher extends StatefulWidget {
  const DogempAppBarThemeSwitcher({Key? key}) : super(key: key);

  @override
  State<DogempAppBarThemeSwitcher> createState() => _DogempAppBarThemeSwitcherState();
}

class _DogempAppBarThemeSwitcherState extends State<DogempAppBarThemeSwitcher> {
  bool isLight = Dogemp.initialThemeMode == ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isLight = !isLight;
          isLight
              ? Dogemp.of(context)!.changeTheme(ThemeMode.light)
              : Dogemp.of(context)!.changeTheme(ThemeMode.dark);
        });
      },
      child: isLight ? const Icon(Icons.sunny) : const Icon(Icons.night_shelter),
    );
  }
}
