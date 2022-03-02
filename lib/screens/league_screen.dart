import 'package:flutter/material.dart';

@immutable
class LeagueScreen extends StatelessWidget {
  const LeagueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aulas')),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        alignment: Alignment.topCenter,
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text('hello'),
        ),
      ),
    );
  }
}
