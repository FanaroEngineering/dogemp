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
      color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) =>
          index.isEven ? Colors.white : Colors.grey.withOpacity(0.1)),
      cells: <DataCell>[
        DataCell(Text('${index + 1}')),
        DataCell(Text(lecture.name)),
        DataCell(Text(DateFormat('dd-MM-yyyy').format(lecture.date))),
        DataCell(
          RichText(
            text: TextSpan(
              text: lecture.sgfLink.id,
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () async => launch(lecture.sgfLink.completeLink),
            ),
          ),
        ),
        DataCell(
          RichText(
            text: TextSpan(
              text: lecture.twitchLink.id,
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () async => launch(lecture.twitchLink.completeLink),
            ),
          ),
        ),
        DataCell(
          RichText(
            text: TextSpan(
              text: lecture.youtubeLink.id,
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () async => launch(lecture.youtubeLink.completeLink),
            ),
          ),
        ),
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
                  DataColumn(label: Text('ID', style: LecturesTable.headerStyle)),
                  DataColumn(label: Text('Nome', style: LecturesTable.headerStyle)),
                  DataColumn(label: Text('Data', style: LecturesTable.headerStyle)),
                  DataColumn(label: Text('SGF', style: LecturesTable.headerStyle)),
                  DataColumn(label: Text('Link Twitch', style: LecturesTable.headerStyle)),
                  DataColumn(label: Text('Link YouTube', style: LecturesTable.headerStyle)),
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
