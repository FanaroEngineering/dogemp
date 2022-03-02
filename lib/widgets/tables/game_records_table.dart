import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../data/game_records.dart';
import '../../schema/game_record.dart';

import '../clickable_link.dart';

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
        DataCell(ClickableLink(
          link: gameRecord.black.ogsNick!.ogsPlayerLink,
          linkText: gameRecord.black.ogsNick!.name,
        )),
        DataCell(SelectableText(gameRecord.black.baseElo!.elo.toString())),
        DataCell(ClickableLink(
          link: gameRecord.white.ogsNick!.ogsPlayerLink,
          linkText: gameRecord.white.ogsNick!.name,
        )),
        DataCell(SelectableText(gameRecord.white.baseElo!.elo.toString())),
        DataCell(
          Center(
            child: SelectableText(gameRecord.handicap.toString()),
          ),
        ),
        DataCell(SelectableText(gameRecord.result)),
        DataCell(
          Center(child: SelectableText(gameRecord.status.symbol)),
        ),
        DataCell(ClickableLink(link: gameRecord.aiSenseiLink)),
        DataCell(
          gameRecord.twitchLink1 != null
              ? Center(child: ClickableLink(link: gameRecord.twitchLink1!))
              : const SelectableText(''),
        ),
        DataCell(
          gameRecord.youtubeLink1 != null
              ? ClickableLink(link: gameRecord.youtubeLink1!)
              : const SelectableText(''),
        ),
        DataCell(
          gameRecord.twitchLink2 != null
              ? Center(child: ClickableLink(link: gameRecord.twitchLink2!))
              : const SelectableText(''),
        ),
        DataCell(
          gameRecord.youtubeLink2 != null
              ? ClickableLink(link: gameRecord.youtubeLink2!)
              : const SelectableText(''),
        ),
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        DataTable(
          columnSpacing: 15,
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
                'Partida',
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
                  'Preto',
                  style: GameRecordsTable.headerStyle,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Elo',
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
            DataColumn(
              label: SelectableText(
                'Elo',
                style: GameRecordsTable.headerStyle,
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
              label: SelectableText(
                'Resultado',
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Status',
                textAlign: TextAlign.center,
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'AI Sensei (Plano Dan)',
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Twitch Link #1',
                textAlign: TextAlign.center,
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'YouTube Link #1',
                textAlign: TextAlign.center,
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Twitch Link #2',
                textAlign: TextAlign.center,
                style: GameRecordsTable.headerStyle,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'YouTube Link #2',
                textAlign: TextAlign.center,
                style: GameRecordsTable.headerStyle,
              ),
            ),
          ],
          rows: gameRecordsRows,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
