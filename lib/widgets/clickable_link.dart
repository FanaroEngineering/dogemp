import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import '../schema/links.dart';

@immutable
class ClickableLink extends StatelessWidget {
  const ClickableLink({
    Key? key,
    required this.link,
    this.linkText,
    this.color = Colors.blue,
  }) : super(key: key);

  final Link link;
  final String? linkText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        text: linkText ?? link.id,
        style: TextStyle(color: color),
        recognizer: TapGestureRecognizer()..onTap = () async => launch(link.completeLink),
      ),
    );
  }
}
