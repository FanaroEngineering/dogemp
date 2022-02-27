import 'package:flutter/material.dart';

class UnorederedListItem extends StatelessWidget {
  final String text;

  const UnorederedListItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 20),
        const SelectableText('• '),
        const SizedBox(width: 2),
        Expanded(
          child: SelectableText(text),
        ),
      ],
    );
  }
}