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
