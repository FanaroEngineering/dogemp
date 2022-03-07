import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/tables/game_records_table.dart';
import '../widgets/tables/lectures_table.dart';
import '../widgets/tables/players_table.dart';

import 'league_screen.dart';
import 'standard_screen.dart';
import 'rules_and_other_info_screen.dart';

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
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => screen,
          transitionDuration: const Duration(seconds: 0),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 0.15 * MediaQuery.of(context).size.height),
              const SizedBox(height: 25),
              SelectableText(
                'DOGemP',
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(
                  height: 0.7,
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SelectableText(
                'Dojo Online de Go em Português',
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 27.5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: const Text('Jogadores'),
                      onPressed: _toScreen(
                        context,
                        const StandardScreen(content: PlayersTable()),
                      ),
                      style: screenButtonStyle,
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Liga'),
                      onPressed: _toScreen(
                        context,
                        const LeagueScreen(),
                      ),
                      style: screenButtonStyle,
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Partidas'),
                      onPressed: _toScreen(
                        context,
                        const StandardScreen(content: GameRecordsTable()),
                      ),
                      style: screenButtonStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: const Text('Aulas'),
                      onPressed: _toScreen(
                        context,
                        const StandardScreen(content: LecturesTable()),
                      ),
                      style: screenButtonStyle,
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Regras & Outras Informações'),
                      onPressed: _toScreen(
                        context,
                        const RulesAndOtherInfoScreen(),
                      ),
                      style: screenButtonStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
