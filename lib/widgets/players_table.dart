import 'package:flutter/material.dart';

import '../data/players.dart';
import '../schema/player.dart';

import 'clickable_link.dart';

@immutable
class PlayersTable extends StatelessWidget {
  const PlayersTable({Key? key}) : super(key: key);

  static const TextStyle headerStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static final List<DataRow> playersRows = List<DataRow>.generate(players.length, (int index) {
    final Player player = players[index];

    return DataRow(
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> _) => index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1)),
      cells: <DataCell>[
        DataCell(SelectableText(player.id.toString().padLeft(3, '0'))),
        DataCell(SelectableText(player.name)),
        DataCell(player.ogsNick != null
            ? ClickableLink(
                link: player.ogsNick!.ogsPlayerLink,
                linkText: player.ogsNick!.name,
              )
            : const SelectableText('')),
        DataCell(SelectableText(player.discord ?? '')),
        DataCell(
          Center(
            child: SelectableText(
              player.country != null ? player.country!.emoji : '',
            ),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(
              player.brazilianState != null ? player.brazilianState!.symbol : '',
            ),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(
              player.baseElo != null ? player.baseElo!.elo.toString() : '',
            ),
          ),
        ),
        DataCell(
          SelectableText(
            player.baseElo != null ? player.baseElo!.danKyuLevel : '',
          ),
        ),
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'ID',
              textAlign: TextAlign.center,
              style: PlayersTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Nome',
            style: PlayersTable.headerStyle,
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'OGS',
              style: PlayersTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Discord',
              style: PlayersTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'País',
              textAlign: TextAlign.center,
              style: PlayersTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Estado',
            textAlign: TextAlign.center,
            style: PlayersTable.headerStyle,
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Elo',
            textAlign: TextAlign.center,
            style: PlayersTable.headerStyle,
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Nível',
            style: PlayersTable.headerStyle,
          ),
        ),
      ],
      rows: playersRows,
    );
  }
}
