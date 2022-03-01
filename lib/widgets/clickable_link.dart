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
  }) : super(key: key);

  final Link link;
  final String? linkText;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        text: linkText ?? link.id,
        style: const TextStyle(color: Colors.blue),
        recognizer: TapGestureRecognizer()..onTap = () async => launch(link.completeLink),
      ),
    );
  }
}
