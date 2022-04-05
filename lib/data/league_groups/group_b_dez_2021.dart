import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupBDez2021 extends StatelessWidget implements LeagueGroup {
  const GroupBDez2021({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'B',
            players: [
              'se',
              'ci',
              'lu',
              'Pe',
              'va',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'seupera'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '39399355'),
                GameResultCell(text: 'V', gameRecordId: '39426991'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '39614270'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'cixidetroy'),
                GameResultCell(text: 'D', gameRecordId: '39399355'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '39426991'),
                GameResultCell(text: 'D', gameRecordId: '39647446'),
                GameResultCell(text: 'V', gameRecordId: '39446354'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'lukeverso'),
                GameResultCell(text: 'D', gameRecordId: '39944144'),
                GameResultCell(text: 'D', gameRecordId: '39426991'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '39258192'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Pedepano'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '39647446'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'vandito'),
                GameResultCell(text: 'D', gameRecordId: '39614270'),
                GameResultCell(text: 'D', gameRecordId: '39446354'),
                GameResultCell(text: 'D', gameRecordId: '39258192'),
                GameResultCell(text: '—'),
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
                PlayerCell(playerName: 'seupera'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'cixidetroy'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('3'))),
                PlayerCell(playerName: 'lukeverso'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('4'))),
                PlayerCell(playerName: 'Pedepano'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('5'))),
                PlayerCell(playerName: 'vandito'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
