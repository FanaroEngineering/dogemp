import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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

  static final List<TableRow> lectureRows = lectures.map((Lecture lecture) {
    return TableRow(children: [
      Text(lecture.name),
      Text(lecture.date.toString()),
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
      body: Table(
        children: <TableRow>[
          const TableRow(
            children: [
              Text('Nome'),
              Text('Data'),
              Text('SGF'),
              Text('Link Twitch'),
              Text('Link YouTube'),
            ],
          ),
          ...lectureRows,
        ],
      ),
    );
  }
}
