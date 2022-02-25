import 'package:meta/meta.dart';

@immutable
class Lecture {
  final String name;
  final DateTime date;
  final Uri? sgfLink;
  final Uri? twitchLink;
  final Uri? youtubeLink;

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
    sgfLink: Uri(
      scheme: 'https',
      host: 'online-go.com',
      path: '/game/39256535',
    ),
    twitchLink: Uri(
      scheme: 'https',
      host: 'twitch.tv',
      path: '/videos/1199642518',
    ),
    youtubeLink: Uri(
      scheme: 'https',
      host: 'youtu.be',
      path: '/sxe4tW3Ujn0',
    ),
  ),
  Lecture(
    name: 'Partida Hikaru no Go #1: Shuwa vs Shusaku (1/2)',
    date: DateTime(2021, 11, 15),
    sgfLink: Uri(
      scheme: 'https',
      host: 'online-go.com',
      path: '/game/39256519',
    ),
    twitchLink: Uri(
      scheme: 'https',
      host: 'twitch.tv',
      path: '/videos/1206330698',
    ),
    youtubeLink: Uri(
      scheme: 'https',
      host: 'youtu.be',
      path: '/QyJyUEK_TEc',
    ),
  ),
];
