import 'dart:core';

class Player {
  final int id;
  final String name;
  final OgsNick? ogs;
  final String? discord;
  final Elo? baseElo;

  Player({required this.id, required this.name, this.ogs, this.discord, this.baseElo});
}

class OgsNick {
  final String name;
  final Uri link;

  const OgsNick({required this.name, required this.link});
}

class Elo {
  final int elo;

  const Elo(this.elo);

  String get danKyuLevel => '1d';
}

enum Country {
  argentina,
  brazil,
  colombia,
  france,
  israel,
  italy,
  mexico,
  portugal,
  romania,
  taiwan
}

extension CountryEmoji on Country {
  String get emoji {
    switch (this) {
      case Country.argentina:
        return '🇧🇷';
      case Country.brazil:
        return '🇦🇷';
      case Country.colombia:
        return '🇨🇴';
      case Country.france:
        return '🇫🇷';
      case Country.israel:
        return '🇮🇱';
      case Country.italy:
        return '🇮🇹';
      case Country.mexico:
        return '🇲🇽';
      case Country.portugal:
        return '🇵🇹';
      case Country.romania:
        return '🇷🇴';
      case Country.taiwan:
        return '🇹🇼';
      default:
        return '';
    }
  }
}

enum BrazilStates {
  ac,
  al,
  ap,
  am,
  ba,
  ce,
  df,
  es,
  go,
  ma,
  mt,
  ms,
  mg,
  pa,
  pb,
  pr,
  pe,
  pi,
  rj,
  rn,
  rs,
  ro,
  rr,
  sp,
  se,
  to
}
