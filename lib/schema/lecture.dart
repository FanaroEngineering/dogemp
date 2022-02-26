import 'package:meta/meta.dart';

import 'links.dart';

@immutable
class Lecture {
  final String name;
  final DateTime date;
  final OgsGameLink sgfLink;
  final TwitchLink twitchLink;
  final YouTubeLink youtubeLink;

  Lecture({
    required this.name,
    required this.date,
    String sgfLink = '',
    String twitchLink = '',
    String youtubeLink = '',
  })  : sgfLink = OgsGameLink(id: sgfLink),
        twitchLink = TwitchLink(id: twitchLink),
        youtubeLink = YouTubeLink(id: youtubeLink);
}
