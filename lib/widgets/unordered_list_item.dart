import 'package:flutter/material.dart';

@immutable
class UnorederedListItem extends StatelessWidget {
  final String text;
  final int level;

  const UnorederedListItem({
    Key? key,
    required this.text,
    this.level = 1,
  }) : super(key: key);

  String get bulletChar {
    switch (level) {
      case 1:
        return '\u2022';
      case 2:
        return '\u25AA';
      case 3:
        return '\u25E6';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: level * 20),
        SelectableText(bulletChar),
        const SizedBox(width: 3),
        Expanded(
          child: SelectableText(text),
        ),
      ],
    );
  }
}
