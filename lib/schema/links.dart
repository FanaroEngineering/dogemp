import 'package:meta/meta.dart';

@immutable
class AiSenseiLink {
  final Uri link;

  AiSenseiLink({required String id})
      : link = Uri(
          scheme: 'https',
          host: 'ai-sensei.com',
          path: '/game/wCbiGfZSh7TjX5eXM8TDgvMzi5u2/$id',
        );
}

@immutable
class YouTubeLink {
  final Uri link;

  YouTubeLink({required String id})
      : link = Uri(
          scheme: 'https',
          host: 'youtu.be',
          path: '/$id',
        );
}

@immutable
class TwitchLink {
  final Uri link;

  TwitchLink({required String id})
      : link = Uri(
          scheme: 'https',
          host: 'twitch.tv',
          path: '/videos/$id',
        );
}

@immutable
class OgsPlayerLink {
  final Uri link;

  OgsPlayerLink({required String id})
      : link = Uri(
          scheme: 'https',
          host: 'online-go.com',
          path: '/player/$id',
        );
}

@immutable
class OgsGameLink {
  final Uri link;

  OgsGameLink({required String id})
      : link = Uri(
          scheme: 'https',
          host: 'online-go.com',
          path: '/game/$id',
        );
}
