import 'package:flutter/material.dart';

import '../main.dart';

final AppBar dogempAppBar = AppBar(
  actions: const <Widget>[
    DogempAppBarThemeSwitcher(),
    SizedBox(width: 20),
  ],
);

class DogempAppBarThemeSwitcher extends StatefulWidget {
  const DogempAppBarThemeSwitcher({Key? key}) : super(key: key);

  @override
  State<DogempAppBarThemeSwitcher> createState() => _DogempAppBarThemeSwitcherState();
}

class _DogempAppBarThemeSwitcherState extends State<DogempAppBarThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            Dogemp.currentThemeIsLight(context)
                ? Dogemp.of(context)!.changeTheme(ThemeMode.dark)
                : Dogemp.of(context)!.changeTheme(ThemeMode.light);
          });
        },
        icon: Dogemp.currentThemeIsLight(context)
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode));
  }
}
