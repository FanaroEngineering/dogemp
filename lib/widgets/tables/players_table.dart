import 'package:flutter/material.dart';

import '../../data/players.dart';
import '../../schema/player.dart';

import '../clickable_link.dart';

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
          Center(
            child: SelectableText(
              player.baseElo != null ? player.baseElo!.danKyuLevel : '',
            ),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(player.planStatusString(2022, Month.feb)),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(player.planStatusString(2022, Month.jan)),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(player.planStatusString(2021, Month.dec)),
          ),
        ),
        DataCell(
          Center(
            child: SelectableText(player.planStatusString(2021, Month.nov)),
          ),
        ),
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        DataTable(
          columnSpacing: 15,
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
            DataColumn(
              label: SelectableText(
                'Fev 2022',
                textAlign: TextAlign.center,
                style: PlayersTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Jan 2022',
                textAlign: TextAlign.center,
                style: PlayersTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Dez 2021',
                textAlign: TextAlign.center,
                style: PlayersTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Nov 2021',
                textAlign: TextAlign.center,
                style: PlayersTable.headerStyle,
              ),
            ),
          ],
          rows: playersRows,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
