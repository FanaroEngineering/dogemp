import 'package:meta/meta.dart';

import 'links.dart';
import 'player.dart';

@immutable
class GameRecord {
  final OgsGameLink ogsLink;
  final DateTime date;
  final int handicap;
  final Player black;
  final Player white;
  final String result;
  final Status status;
  final AiSenseiLink aiSenseiLink;
  final TwitchLink? twitchLink1;
  final TwitchLink? twitchLink2;
  final YouTubeLink? youtubeLink1;
  final YouTubeLink? youtubeLink2;

  GameRecord({
    required this.ogsLink,
    required this.date,
    required this.handicap,
    required String black,
    required String white,
    required this.result,
    required this.status,
    required this.aiSenseiLink,
    this.twitchLink1,
    this.twitchLink2,
    this.youtubeLink1,
    this.youtubeLink2,
  })  : black = GameRecord.findPlayer(black),
        white = GameRecord.findPlayer(white);

  static Player findPlayer(String name) =>
      players.where((Player player) => player.ogsNick!.name == name).first;
}

final List<GameRecord> gameRecords = [
  GameRecord(
    ogsLink: OgsGameLink(id: '38953919'),
    date: DateTime(2021, 11, 1),
    handicap: 0,
    black: 'Phelan',
    white: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'vn2enXTYtDgv8pvfqQzp'),
    twitchLink1: TwitchLink(id: '1218713892'),
    youtubeLink1: YouTubeLink(id: 'kbvyqPpm8D0'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38733948'),
    date: DateTime(2021, 11, 1),
    handicap: 0,
    black: 'AfricanGrimReaper',
    white: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'KXUcvuVkbkOxZliMioCH'),
    twitchLink1: TwitchLink(id: '1212309874'),
    youtubeLink1: YouTubeLink(id: 'YHk7tl_tnr4'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38650411'),
    date: DateTime(2021, 11, 1),
    handicap: 0,
    black: 'Pedepano',
    white: 'AfricanGrimReaper',
    result: 'W+151.5',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'qPWsoW0ofR7F7IYXj6XI'),
    twitchLink1: TwitchLink(id: '1206330697'),
    youtubeLink1: YouTubeLink(id: 'HaJddNT1lyc'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38482719'),
    date: DateTime(2021, 11, 1),
    handicap: 0,
    black: 'Pedepano',
    white: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'FLOPA63JSwqQk9lAiztJ'),
    twitchLink1: TwitchLink(id: '1199642516'),
    youtubeLink1: YouTubeLink(id: 'Wg8SySprt0U'),
  ),
  GameRecord(
    ogsLink: OgsGameLink(id: '38321258'),
    date: DateTime(2021, 11, 1),
    handicap: 9,
    black: 'AudreyLucianoFilho',
    white: 'psygo',
    result: 'W+R',
    status: Status.reviewed,
    aiSenseiLink: AiSenseiLink(id: 'hgkGqqdCxMkurK8FLExn'),
    twitchLink1: TwitchLink(id: '1206330695'),
    youtubeLink1: YouTubeLink(id: 'ZH8VyKmZdg8'),
  ),
];

enum Status {
  notYetReviewed,
  notYetReviewedAndNeedsStrongerPlayer,
  reviewed,
  reviewedWithAStrongerPlayer,
  notGonnaBeReviewed,
  notGonnaBeReviewedNeedsStrongerPlayer,
}

extension StatusSymbol on Status {
  String get symbol {
    switch (this) {
      case Status.notYetReviewed:
        return 'A';
      case Status.notYetReviewedAndNeedsStrongerPlayer:
        return 'AF';
      case Status.reviewed:
        return 'X';
      case Status.reviewedWithAStrongerPlayer:
        return 'XF';
      case Status.notGonnaBeReviewed:
        return 'N';
      case Status.notGonnaBeReviewedNeedsStrongerPlayer:
        return 'NF';
      default:
        return '';
    }
  }
}
