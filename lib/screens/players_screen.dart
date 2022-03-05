import 'package:flutter/material.dart';

import '../widgets/tables/players_table.dart';

@immutable
class PlayersScreen extends StatelessWidget {
  const PlayersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
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
            child: PlayersTable(),
          ),
        ),
      ),
    );
  }
}
