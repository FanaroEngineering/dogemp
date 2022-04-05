import 'package:flutter/material.dart';

import '../data/league_groups/group_a_jan_2022.dart';
import '../data/league_groups/group_b_jan_2022.dart';
import '../data/league_groups/group_c_jan_2022.dart';
import '../data/league_groups/group_a_dez_2021.dart';
import '../data/league_groups/group_b_dez_2021.dart';
import '../data/league_groups/group_a_nov_2021.dart';

import '../schema/game_record.dart';
import '../schema/player.dart';

import '../widgets/clickable_link.dart';

import 'standard_screen.dart';

@immutable
class LeagueScreen extends StatelessWidget {
  const LeagueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardScreen(
      content: Column(
        children: const [
          SizedBox(height: 30),
          SelectableText(
            '2022',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 30),
          SelectableText(
            'Janeiro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 20),
          GroupAJan2022(),
          SizedBox(height: 20),
          GroupBJan2022(),
          SizedBox(height: 20),
          GroupCJan2022(),
          SizedBox(height: 20),
          SelectableText(
            '2021',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 30),
          SelectableText(
            'Dezembro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 20),
          GroupADez2021(),
          SizedBox(height: 20),
          GroupBDez2021(),
          SizedBox(height: 30),
          SelectableText(
            'Novembro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 20),
          GroupANov2021(),
        ],
      ),
    );
  }
}

@immutable
abstract class LeagueGroup {
  static List<DataColumn> generateGroupHeader({
    required String level,
    required List<String> players,
  }) =>
      [
        DataColumn(
          label: SelectableText(
            'Grupo ' + level,
          ),
        ),
      ] +
      List<DataColumn>.generate(
        players.length,
        (int index) => DataColumn(
          label: SelectableText(
            players[index],
            textAlign: TextAlign.center,
          ),
        ),
      );
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
                    style: TextStyle(color: text == '—' ? Colors.orange : Colors.grey),
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
      default:
        return Colors.black;
    }
  }
}
