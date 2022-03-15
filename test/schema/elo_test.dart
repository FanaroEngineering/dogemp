import 'package:dogemp/data/game_records.dart';
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
    });
  });

  test('Recursively calculating Elos from games', () {
    final List<GameRecord> reverseOrderedGameRecords = List<GameRecord>.from(gameRecords)
      ..sort((GameRecord g1, GameRecord g2) => g2.date.compareTo(g1.date));

    expect(reverseOrderedGameRecords.first.black.ogsNick!.name, 'Phelan');
    expect(reverseOrderedGameRecords.first.white.ogsNick!.name, 'psygo');

    expect(reverseOrderedGameRecords.last.black.ogsNick!.name, 'AudreyLucianoFilho');
    expect(reverseOrderedGameRecords.last.white.ogsNick!.name, 'psygo');

    final List<List<int>> eloDeltas = [];

    for (final GameRecord gameRecord in reverseOrderedGameRecords) {
      // TODO: add handicap
      // TODO: not using the previous (recursive) value of the Elo yet
      final int eloDeltaBlack = gameRecord.black.baseElo!.calculateEloFromGame(
          opponentElo: gameRecord.white.baseElo!,
          gameResult: gameRecord.result.contains('B') ? GameResult.win : GameResult.loss);
      final int eloDeltaWhite = gameRecord.white.baseElo!.calculateEloFromGame(
          opponentElo: gameRecord.black.baseElo!,
          gameResult: gameRecord.result.contains('W') ? GameResult.win : GameResult.loss);

      print('${gameRecord.black.name} | ${gameRecord.white.name}');
      print('${gameRecord.black.baseElo!.elo} | ${gameRecord.white.baseElo!.elo}');
      print('$eloDeltaBlack | $eloDeltaWhite');

      eloDeltas.insert(0, [
        eloDeltaBlack,
        eloDeltaWhite,
      ]);
    }

    expect(eloDeltas, [
      [-12, 7],
      [-6, 4],
      [-34, 42],
      [-2, 1],
      [-6, 4],
    ]);
  });
}
