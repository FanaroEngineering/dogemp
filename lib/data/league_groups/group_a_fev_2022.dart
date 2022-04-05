import 'package:flutter/material.dart';

import '../../screens/league_screen.dart';

@immutable
class GroupAFev2022 extends StatelessWidget implements LeagueGroup {
  const GroupAFev2022({Key? key}) : super(key: key);

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
              'la',
              'ba',
              'Lu',
              'Fa',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'psygo'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '41521732'),
                GameResultCell(text: 'V', gameRecordId: '41782166'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '41207174'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'laercioskt'),
                GameResultCell(text: 'D', gameRecordId: '41521732'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '41425907'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'balaura'),
                GameResultCell(text: 'D', gameRecordId: '41782166'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Luissousa'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Fabrício'),
                GameResultCell(text: 'D', gameRecordId: '41207174'),
                GameResultCell(text: 'D', gameRecordId: '41425907'),
                GameResultCell(text: '—'),
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
