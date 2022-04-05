import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupBFev2022 extends StatelessWidget implements LeagueGroup {
  const GroupBFev2022({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'B',
            players: [
              'ci',
              'XI',
              'Pe',
              'Ph',
              'Ca',
              'cc',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'cixidetroy'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '41399649'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'XIKO'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '41184861'),
                GameResultCell(text: 'D', gameRecordId: '41435407'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Pedepano'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '41624493'),
                GameResultCell(text: 'D', gameRecordId: '41677034'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Phelan'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Cactus Juice'),
                GameResultCell(text: 'V', gameRecordId: '41399649'),
                GameResultCell(text: 'V', gameRecordId: '41184861'),
                GameResultCell(text: 'V', gameRecordId: '41624493'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '41464891'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'cchagas'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '41435407'),
                GameResultCell(text: 'V', gameRecordId: '41677034'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '41464891'),
                GameResultCell(text: 'X'),
              ],
            ),
          ],
        ),
        const SizedBox(width: 50),
        DataTable(
          columnSpacing: 15,
          columns: const [
            DataColumn(label: SelectableText('Colocação')),
            DataColumn(label: SelectableText('Nome')),
          ],
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('1'))),
                PlayerCell(playerName: 'Cactus Juice'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'cchagas'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('3'))),
                PlayerCell(playerName: 'Pedepano'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('4'))),
                PlayerCell(playerName: 'XIKO'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('5'))),
                PlayerCell(playerName: 'cixidetroy'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('6'))),
                PlayerCell(playerName: 'Phelan'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
