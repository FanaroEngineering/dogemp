import 'package:dogemp/schema/game_record.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dogemp/schema/player.dart';

void main() {
  group('Formatting', () {
    test('Kyu Formatting', () {
      const Elo elo = Elo(1000);

      expect(elo.danKyuLevel, '10k');
    });

    test('Dan Formatting', () {
      const Elo elo = Elo(2000);

      expect(elo.danKyuLevel, '1d');
    });
  });

  group('Calculating Elo from a Game', () {
    test('Calculates the K value for the Elo calculation of the game result', () {
      const Elo elo1 = Elo(500);
      const Elo elo2 = Elo(1500);
      const Elo elo3 = Elo(1700);
      const Elo elo4 = Elo(2000);
      const Elo elo5 = Elo(2500);

      expect(elo1.k, 50);
      expect(elo2.k, 40);
      expect(elo3.k, 40);
      expect(elo4.k, 30);
      expect(elo5.k, 30);
    });

    test('Calculates Elo based on the opponent\'s Elo', () {
      // 0. If the result has been voided
      Elo elo1 = const Elo(475);
      Elo elo2 = const Elo(535);
      int eloDelta1 = elo1.calculateEloFromGame(
        opponentElo: elo2,
        gameResult: GameResult.voided,
      );

      expect(eloDelta1, 0);

      // 1. Basic Elo calculation with both players below 1500
      eloDelta1 = elo1.calculateEloFromGame(
        opponentElo: elo2,
        gameResult: GameResult.loss,
      );

      expect(eloDelta1, -21);

      // 2. Basic Elo calculation with one player below 1500 and the other above
      elo1 = const Elo(1600);
      elo2 = const Elo(1395);
      eloDelta1 = elo1.calculateEloFromGame(
        opponentElo: elo2,
        gameResult: GameResult.loss,
      );
      int eloDelta2 = elo2.calculateEloFromGame(
        opponentElo: elo1,
        gameResult: GameResult.win,
      );

      expect(eloDelta1, -31);
      expect(eloDelta2, 38);

      // 3. Basic Elo calculation with handicap
      elo1 = const Elo(900);
      elo2 = const Elo(2000);
      eloDelta1 = elo1.calculateEloFromGame(
        opponentElo: elo2,
        gameResult: GameResult.loss,
        handicap: -9,
      );
      eloDelta2 = elo2.calculateEloFromGame(
        opponentElo: elo1,
        gameResult: GameResult.win,
        handicap: 9,
      );

      expect(eloDelta1, -12);
      expect(eloDelta2, 7);
    });
  });

  test('Recursively calculating Elos from games', () {
    final List<GameRecord> gameRecordsWithElos = [];

    for (final GameRecord gameRecord in GameRecord.reverseOrderedGameRecords) {
      // TODO: not using the previous (recursive) value of the Elo yet
      final List<GameRecord> lastGamesFromBlack = gameRecordsWithElos
          .where((GameRecord olderGameRecord) =>
              olderGameRecord.black.name == gameRecord.black.name ||
              olderGameRecord.white.name == gameRecord.black.name)
          .toList();
      final List<GameRecord> lastGamesFromWhite = gameRecordsWithElos
          .where((GameRecord olderGameRecord) =>
              olderGameRecord.black.name == gameRecord.white.name ||
              olderGameRecord.white.name == gameRecord.white.name)
          .toList();

      late Elo currentBlackElo;
      if (lastGamesFromBlack.isEmpty) {
        currentBlackElo = gameRecord.black.baseElo!;
      } else {
        final GameRecord lastGameFromBlack = lastGamesFromBlack.first;
        final bool wasBlackBlack = lastGameFromBlack.black.name == gameRecord.black.name;

        wasBlackBlack
            ? currentBlackElo =
                lastGameFromBlack.currentBlackElo! + lastGameFromBlack.eloDeltaBlack!
            : currentBlackElo =
                lastGameFromBlack.currentWhiteElo! + lastGameFromBlack.eloDeltaWhite!;
      }

      late Elo currentWhiteElo;
      if (lastGamesFromWhite.isEmpty) {
        currentWhiteElo = gameRecord.white.baseElo!;
      } else {
        final GameRecord lastGameFromWhite = lastGamesFromWhite.first;
        final bool wasWhiteWhite = lastGameFromWhite.white.name == gameRecord.white.name;

        wasWhiteWhite
            ? currentWhiteElo =
                lastGameFromWhite.currentWhiteElo! + lastGameFromWhite.eloDeltaWhite!
            : currentWhiteElo =
                lastGameFromWhite.currentBlackElo! + lastGameFromWhite.eloDeltaBlack!;
      }

      final GameRecord gameRecordWithElo = gameRecord.appendCalculatedElos(
        currentBlackElo: currentBlackElo,
        currentWhiteElo: currentWhiteElo,
      );

      gameRecordsWithElos.insert(0, gameRecordWithElo);
    }

    expect(gameRecordsWithElos[4].currentBlackElo!.elo, 900);
    expect(gameRecordsWithElos[4].eloDeltaBlack, -12);
    expect(gameRecordsWithElos[4].currentWhiteElo!.elo, 2000);
    expect(gameRecordsWithElos[4].eloDeltaWhite, 7);

    expect(gameRecordsWithElos[3].currentBlackElo!.elo, 1700);
    expect(gameRecordsWithElos[3].eloDeltaBlack, -6);
    expect(gameRecordsWithElos[3].currentWhiteElo!.elo, 2007);
    expect(gameRecordsWithElos[3].eloDeltaWhite, 4);

    expect(gameRecordsWithElos[2].currentBlackElo!.elo, 1694);
    expect(gameRecordsWithElos[2].eloDeltaBlack, -34);
    expect(gameRecordsWithElos[2].currentWhiteElo!.elo, 1400);
    expect(gameRecordsWithElos[2].eloDeltaWhite, 42);

    expect(gameRecordsWithElos[1].currentBlackElo!.elo, 1442);
    expect(gameRecordsWithElos[1].eloDeltaBlack, -2);
    expect(gameRecordsWithElos[1].currentWhiteElo!.elo, 2011);
    expect(gameRecordsWithElos[1].eloDeltaWhite, 1);

    expect(gameRecordsWithElos[0].currentBlackElo!.elo, 1700);
    expect(gameRecordsWithElos[0].eloDeltaBlack, -6);
    expect(gameRecordsWithElos[0].currentWhiteElo!.elo, 2012);
    expect(gameRecordsWithElos[0].eloDeltaWhite, 4);
  });
}
