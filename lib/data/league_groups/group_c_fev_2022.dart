import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupCFev2022 extends StatelessWidget implements LeagueGroup {
  const GroupCFev2022({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        DataTable(
          columnSpacing: 15,
          columns: LeagueGroup.generateGroupHeader(
            level: 'C',
            players: [
              'va',
              'Ol',
              'Pu',
              'va',
              'Ol',
              'Pu',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'vandito'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'D', gameRecordId: '41271299'),
                GameResultCell(text: 'D', gameRecordId: '41068955'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'D', gameRecordId: '41807658'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Oliv.AS'),
                GameResultCell(text: 'V', gameRecordId: '41271299'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '41155570'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '41467316'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'PutzGrila'),
                GameResultCell(text: 'V', gameRecordId: '41068955'),
                GameResultCell(text: 'D', gameRecordId: '41155570'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '41807658'),
                GameResultCell(text: 'D', gameRecordId: '41467316'),
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
                PlayerCell(playerName: 'Oliv.AS'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'PutzGrila'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('3'))),
                PlayerCell(playerName: 'vandito'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
