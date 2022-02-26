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

  static final List<TableRow> lectureRows = lectures.map((Lecture lecture) {
    return TableRow(children: [
      Text(lecture.name),
      Text(DateFormat('dd-MM-yyyy').format(lecture.date)),
      RichText(
        text: TextSpan(
          text: lecture.sgfLink.id,
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => launch(lecture.sgfLink.completeLink),
        ),
      ),
      RichText(
        text: TextSpan(
          text: lecture.twitchLink.id,
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => launch(lecture.twitchLink.completeLink),
        ),
      ),
      RichText(
        text: TextSpan(
          text: lecture.youtubeLink.id,
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => launch(lecture.youtubeLink.completeLink),
        ),
      ),
    ]);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aulas')),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),
            4: FlexColumnWidth(1),
          },
          children: <TableRow>[
            const TableRow(
              children: [
                Text('Nome', style: LecturesTable.headerStyle),
                Text('Data', style: LecturesTable.headerStyle),
                Text('SGF', style: LecturesTable.headerStyle),
                Text('Link Twitch', style: LecturesTable.headerStyle),
                Text('Link YouTube', style: LecturesTable.headerStyle),
              ],
            ),
            ...lectureRows,
          ],
        ),
      ),
    );
  }
}
