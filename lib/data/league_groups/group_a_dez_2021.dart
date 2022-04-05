import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupADez2021 extends StatelessWidget implements LeagueGroup {
  const GroupADez2021({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'A',
            players: [
              'ps',
              'ba',
              'Af',
              'Ph',
              'Fa',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'psygo'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '39886842'),
                GameResultCell(text: 'V', gameRecordId: '39342634'),
                GameResultCell(text: 'V', gameRecordId: '39597218'),
                GameResultCell(text: 'V', gameRecordId: '39425631'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'balaura'),
                GameResultCell(text: 'V', gameRecordId: '39886842'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '39397595'),
                GameResultCell(text: 'V', gameRecordId: '39701832'),
                GameResultCell(text: 'V', gameRecordId: '39858503'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'AfricanGrimReaper'),
                GameResultCell(text: 'D', gameRecordId: '39342634'),
                GameResultCell(text: 'D', gameRecordId: '39397595'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '39641205'),
                GameResultCell(text: 'D', gameRecordId: '39754350'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Phelan'),
                GameResultCell(text: 'D', gameRecordId: '39597218'),
                GameResultCell(text: 'D', gameRecordId: '39701832'),
                GameResultCell(text: 'V', gameRecordId: '39641205'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Fabrício'),
                GameResultCell(text: 'D', gameRecordId: '39425631'),
                GameResultCell(text: 'D', gameRecordId: '39858503'),
                GameResultCell(text: 'V', gameRecordId: '39754350'),
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
