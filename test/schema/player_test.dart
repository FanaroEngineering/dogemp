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
}
