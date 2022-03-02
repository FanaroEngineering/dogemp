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
      theme: ThemeData.light(),
      scrollBehavior: CustomScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
