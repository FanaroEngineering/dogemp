import 'package:dogemp/main.dart';
import 'package:dogemp/others/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/dogemp_appbar.dart';
import '../widgets/tables/game_records_table.dart';
import '../widgets/tables/lectures_table.dart';
import '../widgets/tables/players_table.dart';

import 'league_screen.dart';
import 'standard_screen.dart';
import 'rules_and_other_info_screen.dart';

@immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void Function()? _toScreen(BuildContext context, Widget screen) => () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => screen),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dogempAppBar,
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
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Liga'),
                      onPressed: _toScreen(
                        context,
                        const LeagueScreen(),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Partidas'),
                      onPressed: _toScreen(
                        context,
                        const StandardScreen(content: GameRecordsTable()),
                      ),
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
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      child: const Text('Regras & Outras Informações'),
                      onPressed: _toScreen(
                        context,
                        const RulesAndOtherInfoScreen(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async => launch('https://youtube.com/c/PhilippeFanaro'),
                    icon: SvgPicture.asset(
                      'assets/youtube.svg',
                      color: DogempTheme.currentThemeIsLight(context)
                          ? Colors.black
                          : Colors.white.withOpacity(0.75),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async => launch('https://github.com/FanaroEngineering/dogemp'),
                    icon: SvgPicture.asset(
                      'assets/github.svg',
                      color: DogempTheme.currentThemeIsLight(context)
                          ? Colors.black
                          : Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async => launch('https://twitch.tv/fanaro009'),
                    icon: SvgPicture.asset(
                      'assets/twitch.svg',
                      color: DogempTheme.currentThemeIsLight(context)
                          ? Colors.black
                          : Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
