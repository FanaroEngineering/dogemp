import 'package:flutter/material.dart';

import '../widgets/players_table.dart';

@immutable
class ParticipantsScreen extends StatelessWidget {
  const ParticipantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Participantes')),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        child: const Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: PlayersTable(),
            ),
          ),
        ),
      ),
    );
  }
}
