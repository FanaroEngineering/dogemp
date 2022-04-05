import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupAJan2022 extends StatelessWidget implements LeagueGroup {
  const GroupAJan2022({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'A',
            players: [
              'ba',
              'ps',
              'la',
              'se',
              'ci',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'balaura'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '40707619'),
                GameResultCell(text: 'V', gameRecordId: '40825956'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'psygo'),
                GameResultCell(text: 'V', gameRecordId: '40707619'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40389931'),
                GameResultCell(text: 'V', gameRecordId: '40366499'),
                GameResultCell(text: 'D', gameRecordId: '40589847'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'laercioskt'),
                GameResultCell(text: 'D', gameRecordId: '40825956'),
                GameResultCell(text: 'D', gameRecordId: '40389931'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40619205'),
                GameResultCell(text: 'V', gameRecordId: '40224966'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'seupera'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '40366499'),
                GameResultCell(text: 'D', gameRecordId: '40619205'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '40980404'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'cixidetroy'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '40589847'),
                GameResultCell(text: 'D', gameRecordId: '40224966'),
                GameResultCell(text: 'V', gameRecordId: '40980404'),
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
                PlayerCell(playerName: 'psygo'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'laercioskt'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('3'))),
                PlayerCell(playerName: 'cixidetroy'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('4'))),
                PlayerCell(playerName: 'balaura'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('5'))),
                PlayerCell(playerName: 'seupera'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
