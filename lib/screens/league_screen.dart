import 'package:dogemp/schema/game_record.dart';
import 'package:dogemp/schema/player.dart';
import 'package:flutter/material.dart';

import '../widgets/clickable_link.dart';

@immutable
class LeagueScreen extends StatelessWidget {
  const LeagueScreen({Key? key}) : super(key: key);

  static const TextStyle headerStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  List<DataColumn> _generateGroupHeader({
    required String level,
    required List<String> players,
  }) =>
      [
        DataColumn(
          label: SelectableText(
            'Grupo ' + level,
            style: LeagueScreen.headerStyle,
          ),
        ),
      ] +
      List<DataColumn>.generate(
        players.length,
        (int index) => DataColumn(
          label: SelectableText(
            players[index],
            style: LeagueScreen.headerStyle,
            textAlign: TextAlign.center,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liga')),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 15,
              columns: _generateGroupHeader(
                level: 'A',
                players: [
                  'ps',
                  'Af',
                  'Ph',
                  'Pe',
                  'Au',
                ],
              ),
              rows: [
                DataRow(
                  color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
                  cells: [
                    PlayerCell(playerName: 'psygo'),
                    GameResultCell(text: 'X'),
                    GameResultCell(text: 'V', gameRecordId: '38733948'),
                    GameResultCell(text: 'V', gameRecordId: '38953919'),
                    GameResultCell(text: 'V', gameRecordId: '38650411'),
                    GameResultCell(text: 'V', gameRecordId: '38321258'),
                  ],
                ),
                DataRow(
                  cells: [
                    PlayerCell(playerName: 'AfricanGrimReaper'),
                    GameResultCell(text: 'D', gameRecordId: '38733948'),
                    GameResultCell(text: 'X'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: 'V', gameRecordId: '38650411'),
                    GameResultCell(text: '-'),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
                  cells: [
                    PlayerCell(playerName: 'Phelan'),
                    GameResultCell(text: 'D', gameRecordId: '38953919'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: 'X'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: '-'),
                  ],
                ),
                DataRow(
                  cells: [
                    PlayerCell(playerName: 'Pedepano'),
                    GameResultCell(text: 'D', gameRecordId: '38482719'),
                    GameResultCell(text: 'D', gameRecordId: '38650411'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: 'X'),
                    GameResultCell(text: '-'),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
                  cells: [
                    PlayerCell(playerName: 'AudreyLucianoFilho'),
                    GameResultCell(text: 'D', gameRecordId: '38321258'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: '-'),
                    GameResultCell(text: 'X'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class PlayerCell extends DataCell {
  PlayerCell({required String playerName})
      : super(
          ClickableLink(
            link: Player.findPlayer(playerName).ogsNick!.ogsPlayerLink,
            linkText: playerName,
          ),
        );
}

@immutable
class GameResultCell extends DataCell {
  GameResultCell({
    required String text,
    String? gameRecordId,
  }) : super(
          Center(
            child: gameRecordId == null
                ? SelectableText(
                    text,
                    style: const TextStyle(color: Colors.grey),
                  )
                : ClickableLink(
                    linkText: text,
                    link: GameRecord.findGameRecordById(gameRecordId).ogsLink,
                    color: decideColor(text),
                  ),
          ),
        );

  static Color decideColor(String text) {
    switch (text) {
      case 'V':
        return Colors.green;
      case 'D':
        return Colors.red.shade300;
      case '—':
        return Colors.amber;
      default:
        return Colors.black;
    }
  }
}
