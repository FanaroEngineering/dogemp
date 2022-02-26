import 'package:dogemp/schema/links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data/lectures.dart';
import 'schema/lecture.dart';

void main() => runApp(const MyApp());

@immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOGemP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LecturesTable(),
    );
  }
}

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
          (Set<MaterialState> _) => index.isEven ? Colors.white : Colors.grey.withOpacity(0.1)),
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
    return Scaffold(
      appBar: AppBar(title: const Text('Aulas')),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class ClickableLink extends StatelessWidget {
  final Link link;

  const ClickableLink({Key? key, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        text: link.id,
        style: const TextStyle(color: Colors.blue),
        recognizer: TapGestureRecognizer()..onTap = () async => launch(link.completeLink),
      ),
    );
  }
}
