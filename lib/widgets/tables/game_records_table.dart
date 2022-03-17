import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../data/game_records.dart';

import '../../others/theme.dart';

import '../../schema/game_record.dart';

import '../clickable_link.dart';

@immutable
class GameRecordsTable extends StatefulWidget {
  const GameRecordsTable({Key? key}) : super(key: key);

  @override
  State<GameRecordsTable> createState() => _GameRecordsTableState();
}

class _GameRecordsTableState extends State<GameRecordsTable> {
  Widget formattedEloDelta(int delta) {
    return Center(
      child: SelectableText(
        (delta >= 0 ? '+' : '') + delta.toString(),
        style: TextStyle(
          color: delta >= 0 ? Colors.green : Colors.redAccent,
        ),
      ),
    );
  }

  List<DataRow> gameRecordsRows() {
    final List<GameRecord> gameRecordsWithElos = GameRecord.gameRecordsWithElos();

    return List<DataRow>.generate(gameRecordsWithElos.length, (int index) {
      final GameRecord gameRecord = gameRecordsWithElos[index];

      return DataRow(
        color: DogempTheme.rowColor(context, index),
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
          DataCell(SelectableText(gameRecord.currentBlackElo.toString())),
          DataCell(formattedEloDelta(gameRecord.eloDeltaBlack!)),
          DataCell(ClickableLink(
            link: gameRecord.white.ogsNick!.ogsPlayerLink,
            linkText: gameRecord.white.ogsNick!.name,
          )),
          DataCell(SelectableText(gameRecord.currentWhiteElo.toString())),
          DataCell(formattedEloDelta(gameRecord.eloDeltaWhite!)),
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
  }

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
                ),
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Partida',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Data',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Preto',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Elo',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Dif Elo',
                ),
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Branco',
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Elo',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Dif Elo',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Compensação',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Resultado',
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Status',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'AI Sensei (Plano Dan)',
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Twitch Link #1',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'YouTube Link #1',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'Twitch Link #2',
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: SelectableText(
                'YouTube Link #2',
                textAlign: TextAlign.center,
              ),
            ),
          ],
          rows: gameRecordsRows(),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
