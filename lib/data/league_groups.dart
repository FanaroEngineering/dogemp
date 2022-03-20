import 'package:flutter/material.dart';

import '../screens/league_screen.dart';

@immutable
class GroupANov2021 extends StatelessWidget implements LeagueGroup {
  const GroupANov2021({Key? key}) : super(key: key);

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
              'Af',
              'Ph',
              'Pe',
              'Au',
            ],
          ),
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'psygo'),
                GameResultCell(text: 'X'),
                GameResultCell(text: 'V', gameRecordId: '38733948'),
                GameResultCell(text: 'V', gameRecordId: '38953919'),
                GameResultCell(text: 'V', gameRecordId: '38650411'),
                GameResultCell(text: 'V', gameRecordId: '38321258'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'AfricanGrimReaper'),
                GameResultCell(text: 'D', gameRecordId: '38733948'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'V', gameRecordId: '38650411'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'Phelan'),
                GameResultCell(text: 'D', gameRecordId: '38953919'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              cells: [
                PlayerCell(playerName: 'Pedepano'),
                GameResultCell(text: 'D', gameRecordId: '38482719'),
                GameResultCell(text: 'D', gameRecordId: '38650411'),
                GameResultCell(text: '—'),
                GameResultCell(text: 'X'),
                GameResultCell(text: '—'),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                PlayerCell(playerName: 'AudreyLucianoFilho'),
                GameResultCell(text: 'D', gameRecordId: '38321258'),
                GameResultCell(text: '—'),
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
                PlayerCell(playerName: 'AfricanGrimReaper'),
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
            DataRow(
              color: MaterialStateProperty.resolveWith((_) => Colors.grey.withOpacity(0.1)),
              cells: [
                const DataCell(Center(child: SelectableText('5'))),
                PlayerCell(playerName: 'AudreyLucianoFilho'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
