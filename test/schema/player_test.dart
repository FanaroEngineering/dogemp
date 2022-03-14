import 'package:flutter_test/flutter_test.dart';

import 'package:dogemp/schema/player.dart';

void main() {
  test('Elo | Kyus', () {
    const Elo elo = Elo(1000);

    expect(elo.danKyuLevel, '10k');
  });

  test('Elo | Dan', () {
    const Elo elo = Elo(2000);

    expect(elo.danKyuLevel, '1d');
  });

  test('Elo Calculates the K value for the Elo calculation of the game result', () {
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

  test('Elo | Calculates Elo based on the opponent\'s Elo', () {
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
}
