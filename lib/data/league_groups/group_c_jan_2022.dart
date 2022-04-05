import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupCJan2022 extends StatelessWidget implements LeagueGroup {
  const GroupCJan2022({Key? key}) : super(key: key);

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
              'lu',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'vandito'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40229371'),
                GameResultCell(text: 'V', gameRecordId: '40192381'),
                GameResultCell(text: 'D', gameRecordId: '40590036'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Oliv.AS'),
                GameResultCell(text: 'D', gameRecordId: '40229371'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40341596'),
                GameResultCell(text: 'V', gameRecordId: '40417499'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'PutzGrila'),
                GameResultCell(text: 'D', gameRecordId: '40192381'),
                GameResultCell(text: 'D', gameRecordId: '40341596'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '40503374'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'lukeverso'),
                GameResultCell(text: 'V', gameRecordId: '40590036'),
                GameResultCell(text: 'D', gameRecordId: '40417499'),
                GameResultCell(text: 'D', gameRecordId: '40503374'),
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
                PlayerCell(playerName: 'vandito'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('2'))),
                PlayerCell(playerName: 'Oliv.AS'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('3'))),
                PlayerCell(playerName: 'PutzGrila'),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Center(child: SelectableText('4'))),
                PlayerCell(playerName: 'lukeverso'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
