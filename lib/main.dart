import 'package:flutter/material.dart';

import 'screens/lectures_screen.dart';

void main() => runApp(const Dogemp());

@immutable
class Dogemp extends StatelessWidget {
  const Dogemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: ThemeData.light(),
      home: const LecturesScreen(),
    );
  }
}
