import 'player.dart';

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
    this.youtubeLink2
  });
}