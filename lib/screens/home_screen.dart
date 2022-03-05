import 'package:dogemp/screens/rules_and_other_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'game_records_screen.dart';
import 'league_screen.dart';
import 'lectures_screen.dart';
import 'players_screen.dart';

@immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final ButtonStyle screenButtonStyle = TextButton.styleFrom(
    padding: const EdgeInsets.all(16),
    primary: Colors.white,
    backgroundColor: Colors.black.withOpacity(0.76),
    textStyle: const TextStyle(fontSize: 20),
  );

  void Function()? _toScreen(BuildContext context, Widget screen) => () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => screen,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOGemP — Dojo Online de Go em Português'),
      ),
      body: Column(
        children: [
          SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
          const SizedBox(height: 25),
          SelectableText(
            'DOGemP',
            style: GoogleFonts.mukta(
              fontSize: 70,
              fontWeight: FontWeight.w500,
            ),
          ),
          Positioned(
            top: -150,
            child: SelectableText(
              'Dojo Online de Go em Português',
              style: GoogleFonts.mukta(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('Jogadores'),
                onPressed: _toScreen(context, const PlayersScreen()),
                style: screenButtonStyle,
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Liga'),
                onPressed: _toScreen(context, const LeagueScreen()),
                style: screenButtonStyle,
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Partidas'),
                onPressed: _toScreen(context, const GameRecordsScreen()),
                style: screenButtonStyle,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('Aulas'),
                onPressed: _toScreen(context, const LecturesScreen()),
                style: screenButtonStyle,
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Regras & Outras Informações'),
                onPressed: _toScreen(context, const RulesAndOtherInfoScreen()),
                style: screenButtonStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
