import 'package:flutter/material.dart';

import '../widgets/dogemp_appbar.dart';

@immutable
class StandardScreen extends StatelessWidget {
  final Widget content;

  const StandardScreen({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dogempAppBar,
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: content,
          ),
        ),
      ),
    );
  }
}
