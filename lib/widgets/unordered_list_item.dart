import 'package:flutter/material.dart';

@immutable
class UnorederedListItem extends StatelessWidget {
  final SelectableText selectableText;
  final int level;
  final double indentation;

  const UnorederedListItem({
    Key? key,
    required this.selectableText,
    this.level = 1,
  })  : indentation = level * 20,
        super(key: key);

  String get bulletChar {
    switch (level) {
      case 1:
        return '\u2022';
      case 2:
        return '\u2022';
      case 3:
        return '\u2022';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: indentation),
        SelectableText(bulletChar),
        const SizedBox(width: 3),
        Expanded(
          child: selectableText,
        ),
      ],
    );
  }
}
