import 'package:meta/meta.dart';

final List<Player> players = [
  Player(
    id: 1,
    name: 'Adalberto Reis Duarte',
    ogsNick: OgsNick(
      name: 'Adalberto',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/967575/',
      ),
    ),
  ),
  Player(
    id: 97,
    name: 'Philippe Fanaro',
    ogsNick: OgsNick(
      name: 'psygo',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/52660'
      ),
    ),
    discord: 'psygo#9887',
  ),
  Player(
    id: 52,
    name: 'Gabriel Ventura',
    ogsNick: OgsNick(
      name: 'Pedepano',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/469636'
      ),
    ),
    discord: 'Pedepano#5580',
  ),
  Player(
    id: 13,
    name: 'Audrey Luciano Filho',
    ogsNick: OgsNick(
      name: 'AudreyLucianoFilho',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/1062590'
      ),
    ),
    discord: 'Audrey#1752',
  ),
  Player(
    id: 40,
    name: 'Erendiro Pedro Sangueve',
    ogsNick: OgsNick(
      name: 'AfricanGrimReaper',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/761486'
      ),
    ),
    discord: 'Galo.Negro#9983',
  ),
  Player(
    id: 111,
    name: 'Rui Malhado',
    ogsNick: OgsNick(
      name: 'Phelan',
      link: Uri(
        scheme: 'https',
        host: 'online-go.com',
        path: '/player/27/'
      ),
    ),
    discord: 'Phelan (Rui)#6453',
  ),
];

@immutable
class Player {
  final int id;
  final String name;
  final OgsNick? ogsNick;
  final String? discord;
  final Elo? baseElo;

  const Player({
    required this.id,
    required this.name,
    this.ogsNick,
    this.discord,
    this.baseElo,
  });
}

@immutable
class OgsNick {
  final String name;
  final Uri link;

  const OgsNick({required this.name, required this.link});
}

@immutable
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
