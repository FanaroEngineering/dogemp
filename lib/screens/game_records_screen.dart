import 'package:flutter/material.dart';

import '../widgets/game_records_table.dart';

@immutable
class GameRecordsScreen extends StatelessWidget {
  const GameRecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Partidas')),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        alignment: Alignment.topCenter,
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GameRecordsTable(),
          ),
        ),
      ),
    );
  }
}
