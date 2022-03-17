import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import '../schema/links.dart';

@immutable
class ClickableLink extends StatefulWidget {
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
  State<ClickableLink> createState() => _ClickableLinkState();
}

class _ClickableLinkState extends State<ClickableLink> {
  Widget hoverWidget = const SizedBox.shrink();

  void _fetchPreview(PointerEvent pointerEvent) {
    setState(() {
      if (widget.link.host == 'online-go.com' && widget.link.prePath == 'game') {
        hoverWidget = Positioned(
          top: 25,
          child: Image.network('https://online-go.com/api/v1/games/${widget.link.id}/png'),
        );
      }
    });
  }

  void _onExit(PointerEvent pointerEvent) {
    setState(() {
      hoverWidget = const SizedBox.shrink();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: _fetchPreview,
      onExit: _onExit,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SelectableText.rich(
            TextSpan(
              text: widget.linkText ?? widget.link.id,
              style: TextStyle(color: widget.color),
              recognizer: TapGestureRecognizer()
                ..onTap = () async => launch(widget.link.completeLink),
            ),
          ),
          hoverWidget,
        ],
      ),
    );
  }
}
