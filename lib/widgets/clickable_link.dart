import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:url_launcher/url_launcher.dart';

import '../others/theme.dart';
import '../schema/links.dart';

@immutable
class ClickableLink extends StatelessWidget {
  const ClickableLink({
    Key? key,
    required this.link,
    this.linkText,
    this.color,
  }) : super(key: key);

  final Link link;
  final String? linkText;
  final Color? color;

  Widget _fetchPreview() {
    if (link.prePath.contains('game')) {
      return Image.network('https://online-go.com/api/v1/games/${link.id}/png');
    } else if (link.prePath.contains('player')) {
      return Image.network('https://online-go.com/api/v1/players${link.id}/icon');
    } else if (link.host.contains('youtu')) {
      return Image.network('https://i.ytimg.com/vi/${link.id}/maxresdefault.jpg');
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      content: _fetchPreview(),
      child: SelectableText.rich(
        TextSpan(
          text: linkText ?? link.id,
          style: TextStyle(
            color: color ??
                (DogempTheme.currentThemeIsLight(context)
                    ? const Color(0xff1158c7)
                    : Colors.orange.withOpacity(0.85)),
          ),
          recognizer: TapGestureRecognizer()..onTap = () async => launch(link.completeLink),
        ),
      ),
    );
  }
}
