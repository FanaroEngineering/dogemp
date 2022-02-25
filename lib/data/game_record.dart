import 'package:meta/meta.dart';

import 'player.dart';

@immutable
class GameRecord {
  final Uri ogsLink;
  final DateTime date;
  final int handicap;
  final Player black;
  final Player white;
  final String result;
  final String status;
  final Uri aiSenseiLink;
  final Uri? twitchLink1;
  final Uri? twitchLink2;
  final Uri? youtubeLink1;
  final Uri? youtubeLink2;

  const GameRecord({
    required this.ogsLink,
    required this.date,
    required this.handicap,
    required this.black,
    required this.white,
    required this.result,
    required this.status,
    required this.aiSenseiLink,
    this.twitchLink1,
    this.twitchLink2,
    this.youtubeLink1,
    this.youtubeLink2,
  });
}

Player findPlayer(String name) =>
    players.where((Player player) => player.ogsNick!.name == name).first;

final List<GameRecord> gameRecords = [
  GameRecord(
    ogsLink: Uri(
      scheme: 'https',
      host: 'online-go.com',
      path: '/game/38321258',
    ),
    date: DateTime(2021, 11, 1),
    handicap: 9,
    black: findPlayer('AudreyLucianoFilho'),
    white: findPlayer('psygo'),
    result: 'W+R',
    status: 'X',
    aiSenseiLink: Uri(
      scheme: 'https',
      host: 'ai-sensei.com',
      path: '/game/wCbiGfZSh7TjX5eXM8TDgvMzi5u2/hgkGqqdCxMkurK8FLExn',
    ),
  ),
];
