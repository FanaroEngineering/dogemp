import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../data/game_records.dart';

import 'links.dart';
import 'player.dart';

@immutable
class GameRecord {
  final OgsGameLink ogsLink;
  final DateTime date;
  final LeagueYearMonth leagueYearMonth;
  final int handicap;
  final Player black;
  final Elo? currentBlackElo;
  final int? eloDeltaBlack;
  final Player white;
  final Elo? currentWhiteElo;
  final int? eloDeltaWhite;
  final String result;
  final Status status;
  final AiSenseiLink aiSenseiLink;
  final TwitchLink? twitchLink1;
  final TwitchLink? twitchLink2;
  final YouTubeLink? youtubeLink1;
  final YouTubeLink? youtubeLink2;

  /// Please make sure that each player's [baseElo] is not `null`.
  GameRecord({
    required this.ogsLink,
    required this.date,
    required this.leagueYearMonth,
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
  })  : black = Player.findPlayer(blackName),
        currentBlackElo = null,
        eloDeltaBlack = null,
        white = Player.findPlayer(whiteName),
        currentWhiteElo = null,
        eloDeltaWhite = null,
        assert(Player.findPlayer(blackName).baseElo != null &&
            Player.findPlayer(whiteName).baseElo != null);

  const GameRecord._addElos({
    required this.ogsLink,
    required this.date,
    required this.leagueYearMonth,
    required this.handicap,
    required this.black,
    required this.currentBlackElo,
    required this.eloDeltaBlack,
    required this.white,
    required this.currentWhiteElo,
    required this.eloDeltaWhite,
    required this.result,
    required this.status,
    required this.aiSenseiLink,
    this.twitchLink1,
    this.twitchLink2,
    this.youtubeLink1,
    this.youtubeLink2,
  });

  @override
  String toString() => '| ${ogsLink.id} | ${DateFormat('dd-MM-yyyy').format(date)} | '
      '${black.ogsNick!.name.padRight(18, ' ')} | ${currentBlackElo.toString().padRight(4, ' ')} | ${eloDeltaBlack.toString().padRight(3, ' ')} | '
      '${white.ogsNick!.name.padRight(18, ' ')} | ${currentWhiteElo.toString().padRight(4, ' ')} | ${eloDeltaWhite.toString().padRight(3, ' ')} | '
      '$handicap | ${result.padRight(7, ' ')} |';

  GameRecord appendCalculatedElos({
    required Elo currentBlackElo,
    required Elo currentWhiteElo,
  }) {
    return GameRecord._addElos(
      ogsLink: ogsLink,
      date: date,
      leagueYearMonth: leagueYearMonth,
      handicap: handicap,
      black: black,
      currentBlackElo: currentBlackElo,
      eloDeltaBlack: currentBlackElo.calculateEloFromGame(
        opponentElo: currentWhiteElo,
        gameResult: result.contains('B') ? GameResult.win : GameResult.loss,
        handicap: -handicap,
      ),
      white: white,
      currentWhiteElo: currentWhiteElo,
      eloDeltaWhite: currentWhiteElo.calculateEloFromGame(
        opponentElo: currentBlackElo,
        gameResult: result.contains('W') ? GameResult.win : GameResult.loss,
        handicap: handicap,
      ),
      result: result,
      status: status,
      aiSenseiLink: aiSenseiLink,
    );
  }

  static final List<GameRecord> reverseOrderedGameRecords = List<GameRecord>.from(gameRecords)
    ..sort((GameRecord g1, GameRecord g2) => g1.date.compareTo(g2.date));

  static GameRecord findGameRecordById(String ogsId) =>
      gameRecords.where((GameRecord gameRecord) => gameRecord.ogsLink.id == ogsId).first;

  static List<GameRecord> _lastGamesFrom(List<GameRecord> games, Player player) => games
      .where((GameRecord gameRecord) =>
          gameRecord.black.name == player.name || gameRecord.white.name == player.name)
      .toList();

  static Elo _currentBlackElo(
    GameRecord gameRecord,
    List<GameRecord> lastGamesFromBlack,
  ) {
    late Elo currentBlackElo;
    if (lastGamesFromBlack.isEmpty) {
      currentBlackElo = gameRecord.black.baseElo!;
    } else {
      final GameRecord lastGameFromBlack = lastGamesFromBlack.first;
      final bool wasBlackBlack = lastGameFromBlack.black.name == gameRecord.black.name;

      wasBlackBlack
          ? currentBlackElo = lastGameFromBlack.currentBlackElo! + lastGameFromBlack.eloDeltaBlack!
          : currentBlackElo = lastGameFromBlack.currentWhiteElo! + lastGameFromBlack.eloDeltaWhite!;
    }

    return currentBlackElo;
  }

  static Elo _currentWhiteElo(
    GameRecord gameRecord,
    List<GameRecord> lastGamesFromWhite,
  ) {
    late Elo currentWhiteElo;
    if (lastGamesFromWhite.isEmpty) {
      currentWhiteElo = gameRecord.white.baseElo!;
    } else {
      final GameRecord lastGameFromWhite = lastGamesFromWhite.first;
      final bool wasWhiteWhite = lastGameFromWhite.white.name == gameRecord.white.name;

      wasWhiteWhite
          ? currentWhiteElo = lastGameFromWhite.currentWhiteElo! + lastGameFromWhite.eloDeltaWhite!
          : currentWhiteElo = lastGameFromWhite.currentBlackElo! + lastGameFromWhite.eloDeltaBlack!;
    }
    return currentWhiteElo;
  }

  static List<GameRecord> gameRecordsWithElos() {
    final List<GameRecord> gameRecordsWithElos = [];

    for (final GameRecord gameRecord in GameRecord.reverseOrderedGameRecords) {
      final List<GameRecord> lastGamesFromBlack =
          _lastGamesFrom(gameRecordsWithElos, gameRecord.black);
      final List<GameRecord> lastGamesFromWhite =
          _lastGamesFrom(gameRecordsWithElos, gameRecord.white);

      final GameRecord gameRecordWithElo = gameRecord.appendCalculatedElos(
        currentBlackElo: _currentBlackElo(gameRecord, lastGamesFromBlack),
        currentWhiteElo: _currentWhiteElo(gameRecord, lastGamesFromWhite),
      );

      gameRecordsWithElos.insert(0, gameRecordWithElo);
    }

    return gameRecordsWithElos;
  }

  static Elo mostCurrentEloFromPlayer(
    List<GameRecord> gameRecordsWithElos,
    String ogsNickName,
  ) {
    final Player player = Player.findPlayer(ogsNickName);

    if (gameRecordsWithElos.every((GameRecord gameRecord) =>
        gameRecord.black.ogsNick!.name != ogsNickName &&
        gameRecord.white.ogsNick!.name != ogsNickName)) {
      return player.baseElo!;
    }

    final List<GameRecord> lastGamesFromPlayer = gameRecordsWithElos
        .where((GameRecord gameRecord) =>
            gameRecord.black.ogsNick!.name == ogsNickName ||
            gameRecord.white.ogsNick!.name == ogsNickName)
        .toList();

    if (lastGamesFromPlayer.isEmpty) {
      return player.baseElo!;
    } else {
      final GameRecord lastGameFromPlayer = lastGamesFromPlayer.first;

      return ogsNickName == lastGameFromPlayer.black.ogsNick!.name
          ? (lastGameFromPlayer.currentBlackElo! + lastGameFromPlayer.eloDeltaBlack!)
          : (lastGameFromPlayer.currentWhiteElo! + lastGameFromPlayer.eloDeltaWhite!);
    }
  }
}

@immutable
class LeagueYearMonth {
  final Month month;
  final int year;

  const LeagueYearMonth(this.year, this.month);
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
