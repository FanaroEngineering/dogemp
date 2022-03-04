import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../schema/lecture.dart';
import '../../data/lectures.dart';
import '../clickable_link.dart';

@immutable
class LecturesTable extends StatefulWidget {
  const LecturesTable({Key? key}) : super(key: key);

  @override
  State<LecturesTable> createState() => _LecturesTableState();
}

class _LecturesTableState extends State<LecturesTable> {
  List<Lecture> lecturesList = List.from(lectures);
  bool sortAscending = true;
  int? sortColumnIndex;

  List<DataRow> _lecturesRows() => List<DataRow>.generate(lectures.length, (int index) {
        final Lecture lecture = lecturesList[index];

        return DataRow(
          color: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> _) => index.isOdd ? Colors.white : Colors.grey.withOpacity(0.1)),
          cells: <DataCell>[
            DataCell(SelectableText((lectures.indexOf(lecture) + 1).toString().padLeft(2, '0'))),
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
    return Row(
      children: [
        const SizedBox(width: 20),
        DataTable(
          columnSpacing: 15,
          sortAscending: sortAscending,
          sortColumnIndex: sortColumnIndex,
          headingTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          columns: <DataColumn>[
            DataColumn(
              label: const Expanded(
                child: SelectableText(
                  'ID',
                  textAlign: TextAlign.center,
                ),
              ),
              onSort: (int columnIndex, bool ascending) {
                setState(() {
                  sortAscending = !sortAscending;
                  sortColumnIndex = 0;

                  sortAscending
                      ? lecturesList.sort((Lecture lectureA, Lecture lectureB) =>
                          lectures.indexOf(lectureA).compareTo(lectures.indexOf(lectureB)))
                      : lecturesList.sort((Lecture lectureA, Lecture lectureB) =>
                          lectures.indexOf(lectureB).compareTo(lectures.indexOf(lectureA)));
                });
              },
            ),
            const DataColumn(
              label: SelectableText(
                'Nome',
              ),
            ),
            const DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Data',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const DataColumn(
              label: Expanded(
                child: SelectableText(
                  'SGF',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const DataColumn(
              label: Expanded(
                child: SelectableText(
                  'Link Twitch',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const DataColumn(
              label: SelectableText(
                'Link YouTube',
              ),
            ),
          ],
          rows: _lecturesRows(),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
