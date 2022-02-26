import 'package:meta/meta.dart';

@immutable
abstract class Link {
  final String id;
  final String host;
  final String prePath;
  final Uri link;

  Link({
    required this.id,
    required this.host,
    required this.prePath,
  }) : link = Uri(
          scheme: 'https',
          host: host,
          path: '$prePath/$id',
        );

  String get completeLink => '${link.scheme}://${link.host}${link.path}';
}

@immutable
class AiSenseiLink extends Link {
  AiSenseiLink({required String id})
      : super(
          id: id,
          host: 'ai-sensei.com',
          prePath: '/game',
        );
}

@immutable
class YouTubeLink extends Link {
  YouTubeLink({required String id})
      : super(
          id: id,
          host: 'youtu.be',
          prePath: '',
        );
}

@immutable
class TwitchLink extends Link {
  TwitchLink({required String id})
      : super(
          id: id,
          host: 'twitch.tv',
          prePath: '/videos',
        );
}

@immutable
class OgsPlayerLink extends Link {
  OgsPlayerLink({required String id})
      : super(
          id: id,
          host: 'online-go.com',
          prePath: '/player',
        );
}

@immutable
class OgsGameLink extends Link {
  OgsGameLink({required String id})
      : super(
          id: id,
          host: 'online-go.com',
          prePath: '/game',
        );
}
