import 'package:meta/meta.dart';

import 'links.dart';

@immutable
class Lecture {
  final String name;
  final DateTime date;
  final OgsGameLink? sgfLink;
  final TwitchLink? twitchLink;
  final YouTubeLink? youtubeLink;

  const Lecture({
    required this.name,
    required this.date,
    this.sgfLink,
    this.twitchLink,
    this.youtubeLink,
  });
}

final List<Lecture> lectures = [
  Lecture(
    name: 'Partida da Escada Quebrada do Lee Sedol',
    date: DateTime(2021, 11, 8),
    sgfLink: OgsGameLink(id: '39256535'),
    twitchLink: TwitchLink(id: '1199642518'),
    youtubeLink: YouTubeLink(id: 'sxe4tW3Ujn0'),
  ),
  Lecture(
    name: 'Partida Hikaru no Go #1: Shuwa vs Shusaku (1/2)',
    date: DateTime(2021, 11, 15),
    sgfLink: OgsGameLink(id: '39256519'),
    twitchLink: TwitchLink(id: '1206330698'),
    youtubeLink: YouTubeLink(id: 'QyJyUEK_TEc'),
  ),
];
