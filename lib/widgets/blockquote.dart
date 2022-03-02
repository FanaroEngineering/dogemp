import 'package:flutter/material.dart';

class BlockQuote extends StatelessWidget {
  final String text;

  const BlockQuote({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SelectableText(text),
      padding: const EdgeInsets.only(left: 10, top: 7, bottom: 7),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.blue,
            width: 4,
          ),
        ),
      ),
    );
  }
}
