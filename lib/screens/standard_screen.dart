import 'package:flutter/material.dart';

@immutable
class StandardScreen extends StatelessWidget {
  final Widget content;

  const StandardScreen({
    Key? key,
    required this.content,
  }) : super(key: key);

  static final AppBar dogempAppBar = AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      );

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
