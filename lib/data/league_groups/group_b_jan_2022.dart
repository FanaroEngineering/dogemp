import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupBJan2022 extends StatelessWidget implements LeagueGroup {
  const GroupBJan2022({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'B',
            players: [
              'Ph',
              'Fa',
              'Pe',
              'XI',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Phelan'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '40712999'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Fabrício'),
                GameResultCell(text: 'V', gameRecordId: '40712999'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40822130'),
                GameResultCell(text: 'D', gameRecordId: '40370260'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Pedepano'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '40822130'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '40626509'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'XIKO'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '40370260'),
                GameResultCell(text: 'V', gameRecordId: '40626509'),
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
                PlayerCell(playerName: 'XIKO'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'Fabrício'),
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
                PlayerCell(playerName: 'Phelan'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
