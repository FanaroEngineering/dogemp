import 'package:flutter/material.dart';

import 'screens/lectures_screen.dart';

void main() => runApp(const MyApp());

@immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LecturesScreen(),
    );
  }
}
