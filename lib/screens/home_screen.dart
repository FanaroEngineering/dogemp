import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import 'lectures_screen.dart';
import '../widgets/unordered_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOGemP — Dojo Online de Go em Português'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('Aulas'),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LecturesScreen(),
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Participantes'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Liga'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                child: const Text('Partidas'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SelectableText(
                  '1. Qual é o objetivo?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                const SelectableText('O objetivo é, acima de tudo, criar uma '
                    'comunidade sólida '
                    'de Go com o costume de revisar partidas — de qualidade — '
                    'e focar em aprendizado. Durante anos, a comunidade de Go '
                    'em língua portuguesa — todos os países falantes são '
                    'bem-vindos — esteve esporádica e inconsistente, mudemos '
                    'esse costume a partir de agora.'),
                const SizedBox(height: 10),
                const SelectableText('Algumas maneiras de como este dojo poderá fazer a '
                    'diferença na sua jornada:'),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  text: 'Segundo Daniel Kahneman, prêmio Nobel de '
                      'Economia e um dos pais da psicologia comportamental, para '
                      'que possamos adquirir expertise real em uma habilidade, '
                      'um dos requisitos mais importantes é o retorno ou '
                      'feedback constante, e é esse o papel que as revisões '
                      'terão.',
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  text: 'Prática prolongada, em que seja '
                      'possível ganhar intuição. O caminho é, em geral, e '
                      'em ciclos: incompetência inconsciente, incompetência '
                      'consciente, competência consciente, competência '
                      'inconsciente. Note, também, que as partidas sendo '
                      'longas podemos também recalibrar nossas intuições '
                      'enquanto jogamos, não somente durante as revisões.',
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  text: 'Interações mais saudáveis entre os jogadores, com '
                      'preocupações menores de ego e evitando causar vergonha, '
                      'sempre com muito respeito às limitações alheias e '
                      'opiniões divergentes.',
                ),
                const SizedBox(height: 20),
                const SelectableText(
                  '2. Como funciona?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'As revisões serão primariamente feitas '
                            'por Philippe Fanaro '
                            '1d, mas, para jogadores mais fortes, Alexandre Amaro 5d e '
                            'Wang Feng 5d já se voluntariaram para ajudar. Um a dois '
                            'dias por semana transmissões no ',
                      ),
                      TextSpan(
                        text: 'Twitch',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async => launch('https://twitch.tv/fanaro009/'),
                      ),
                      const TextSpan(
                        text: ' serão feitas para as revisões e a aula semanal, e, após '
                            'tempo indeterminado, todo o conteúdo estará também '
                            'editado e disponível gratuitamente no YouTube, '
                            'provavelmente no canal ',
                      ),
                      TextSpan(
                        text: 'Philippe Fanaro',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async => launch('https://youtube.com/c/PhilippeFanaro'),
                      ),
                      const TextSpan(text: '.'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
