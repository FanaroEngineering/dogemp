import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../schema/lecture.dart';
import '../data/lectures.dart';
import 'clickable_link.dart';

@immutable
class LecturesTable extends StatelessWidget {
  const LecturesTable({Key? key}) : super(key: key);

  static const TextStyle headerStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static final List<DataRow> lectureRows = List<DataRow>.generate(lectures.length, (int index) {
    final Lecture lecture = lectures[index];

    return DataRow(
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> _) => index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1)),
      cells: <DataCell>[
        DataCell(SelectableText((index + 1).toString().padLeft(2, '0'))),
        DataCell(SelectableText(lecture.name)),
        DataCell(SelectableText(DateFormat('dd-MM-yyyy').format(lecture.date))),
        DataCell(ClickableLink(link: lecture.sgfLink)),
        DataCell(ClickableLink(link: lecture.twitchLink)),
        DataCell(ClickableLink(link: lecture.youtubeLink)),
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
              style: LecturesTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Nome',
            style: LecturesTable.headerStyle,
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Data',
              textAlign: TextAlign.center,
              style: LecturesTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'SGF',
              textAlign: TextAlign.center,
              style: LecturesTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: SelectableText(
              'Link Twitch',
              textAlign: TextAlign.center,
              style: LecturesTable.headerStyle,
            ),
          ),
        ),
        DataColumn(
          label: SelectableText(
            'Link YouTube',
            style: LecturesTable.headerStyle,
          ),
        ),
      ],
      rows: lectureRows,
    );
  }
}
