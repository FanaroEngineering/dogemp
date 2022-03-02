import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../data/game_records.dart';
import '../schema/game_record.dart';

import 'clickable_link.dart';

@immutable
class GameRecordsTable extends StatelessWidget {
  const GameRecordsTable({Key? key}) : super(key: key);

  static const TextStyle headerStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static final List<DataRow> gameRecordsRows =
      List<DataRow>.generate(gameRecords.length, (int index) {
    final GameRecord gameRecord = gameRecords[index];

    return DataRow(
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> _) => index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1)),
      cells: <DataCell>[
        DataCell(SelectableText((gameRecords.length - index).toString().padLeft(3, '0'))),
        DataCell(
          Center(
            child: ClickableLink(link: gameRecord.ogsLink),
          ),
        ),
        DataCell(SelectableText(DateFormat('dd-MM-yyyy').format(gameRecord.date))),
        DataCell(
          Center(
            child: SelectableText(gameRecord.handicap.toString()),
          ),
        ),
        DataCell(ClickableLink(
          link: gameRecord.black.ogsNick!.ogsPlayerLink,
          linkText: gameRecord.black.ogsNick!.name,
        )),
        DataCell(ClickableLink(
          link: gameRecord.white.ogsNick!.ogsPlayerLink,
          linkText: gameRecord.black.ogsNick!.name,
        )),
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'ID',
              textAlign: TextAlign.center,
              style: GameRecordsTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Link da Partida',
            textAlign: TextAlign.center,
            style: GameRecordsTable.headerStyle,
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Data',
              textAlign: TextAlign.center,
              style: GameRecordsTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Compensação',
              textAlign: TextAlign.center,
              style: GameRecordsTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Preto',
              style: GameRecordsTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Branco',
            style: GameRecordsTable.headerStyle,
          ),
        ),
      ],
      rows: gameRecordsRows,
    );
  }
}
