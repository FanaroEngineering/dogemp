import 'package:meta/meta.dart';

import 'links.dart';
import 'player.dart';

import '../data/players.dart';

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
    required String blackName,
    required String whiteName,
    required this.result,
    required this.status,
    required this.aiSenseiLink,
    this.twitchLink1,
    this.twitchLink2,
    this.youtubeLink1,
    this.youtubeLink2,
  })  : black = GameRecord.findPlayer(blackName),
        white = GameRecord.findPlayer(whiteName);

  static Player findPlayer(String name) =>
      players.where((Player player) => player.ogsNick!.name == name).first;
}

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
