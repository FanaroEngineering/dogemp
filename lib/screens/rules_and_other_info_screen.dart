import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/blockquote.dart';
import '../widgets/dogemp_appbar.dart';
import '../widgets/unordered_list_item.dart';

@immutable
class RulesAndOtherInfoScreen extends StatefulWidget {
  const RulesAndOtherInfoScreen({Key? key}) : super(key: key);

  @override
  State<RulesAndOtherInfoScreen> createState() => _RulesAndOtherInfoScreenState();
}

class _RulesAndOtherInfoScreenState extends State<RulesAndOtherInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dogempAppBar,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BlockQuote(text: 'O DOGemP está, no momento, suspenso.'),
                const SizedBox(height: 30),
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
                  selectableText: SelectableText('Segundo Daniel Kahneman, prêmio Nobel de '
                      'Economia e um dos pais da psicologia comportamental, para '
                      'que possamos adquirir expertise real em uma habilidade, '
                      'um dos requisitos mais importantes é o retorno ou '
                      'feedback constante, e é esse o papel que as revisões '
                      'terão.'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  selectableText: SelectableText('Prática prolongada, em que seja '
                      'possível ganhar intuição. O caminho é, em geral, e '
                      'em ciclos: incompetência inconsciente, incompetência '
                      'consciente, competência consciente, competência '
                      'inconsciente. Note, também, que as partidas sendo '
                      'longas podemos também recalibrar nossas intuições '
                      'enquanto jogamos, não somente durante as revisões.'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  selectableText:
                      SelectableText('Interações mais saudáveis entre os jogadores, com '
                          'preocupações menores de ego e evitando causar vergonha, '
                          'sempre com muito respeito às limitações alheias e '
                          'opiniões divergentes.'),
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
                const SizedBox(height: 20),
                const SelectableText(
                  '3. Preços',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                const SelectableText(
                  'Para participar, há dois planos possíveis, ' 'com diferentes benefícios:',
                ),
                const SizedBox(height: 20),
                const UnorederedListItem(
                  selectableText: SelectableText('Plano "Só Jogar" || R\$ 5 por mês'),
                ),
                const SizedBox(height: 15),
                const UnorederedListItem(
                  level: 2,
                  selectableText:
                      SelectableText('Participação da liga competitiva do DOGemP, com 4 '
                          'partidas longas mensais contra oponentes do ranking '
                          'mais próximo ao seu.'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  level: 2,
                  selectableText: SelectableText('Se der sorte de jogar com alguém com o plano de '
                      'revisões, receberá dicas também, mais provavelmente '
                      'implicitamente.'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  level: 2,
                  selectableText: SelectableText('Acesso ao servidor privado no Discord — também '
                      'utilizado para agendamento das partidas entre os '
                      'jogadores;'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  level: 2,
                  selectableText:
                      SelectableText('Acesso ao canal de áudio/vídeos para interação nas '
                          'aulas semanais e revisões.'),
                ),
                const SizedBox(height: 20),
                const UnorederedListItem(
                  selectableText: SelectableText('Plano "Jogar e Revisar" || R\$ 50 por mês'),
                ),
                const SizedBox(height: 15),
                const UnorederedListItem(
                  level: 2,
                  selectableText: SelectableText('Tudo que o plano "Só Jogar" inclui.'),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  level: 2,
                  selectableText: SelectableText('4 revisões mensais das partidas da liga.'),
                ),
                const SizedBox(height: 20),
                SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Como via de pagamento, se brasileiro, preferencio ou Pix '
                            'ou boleto bancário; caso contrário, pode ser feito via '
                            'Paypal. Ambos podem ser feitos através do meu email: ',
                      ),
                      TextSpan(
                        text: 'philippefanaro@gmail.com',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async => launch('mailto:philippefanaro@gmail.com'),
                      ),
                      const TextSpan(
                        text: '. O valor em moedas estrangeiras deve ser igual ou maior '
                            'ao equivalente em reais, claro, por favor.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SelectableText(
                  '4. Contatos, Sugestões e Outros Links Úteis',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                const SelectableText(
                  'Philippe Fanaro é quem administra este dojo. ' 'Para contatá-lo:',
                ),
                const SizedBox(height: 20),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Email: ',
                        ),
                        TextSpan(
                          text: 'philippefanaro@gmail.com',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('mailto:philippefanaro@gmail.com'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Discord: ',
                        ),
                        TextSpan(
                          text: 'psygo#9887',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://discordapp.com/users/psygo#9887'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const UnorederedListItem(
                  selectableText: SelectableText('Whatsapp: +55 (11) 97028-6739'),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Website: ',
                        ),
                        TextSpan(
                          text: 'fanaro.io',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://fanaro.io'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Grupo Go Brasil no Facebook',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () async => launch('https://www.facebook.com/groups/gobrasil'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'OGS — Online Go Server',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://online-go.com'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Meu perfil principal no OGS: ',
                        ),
                        TextSpan(
                          text: 'psygo',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://online-go.com/player/52660/'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Twitch: ',
                        ),
                        TextSpan(
                          text: 'Fanaro009',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://twitch.tv/fanaro009'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                UnorederedListItem(
                  selectableText: SelectableText.rich(
                    TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'YouTube: ',
                        ),
                        TextSpan(
                          text: 'Philippe Fanaro',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async => launch('https://youtube.com/c/PhilippeFanaro'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SelectableText.rich(
                  TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text:
                            'Este site é código-aberto e você pode examiná-lo ou contribuir com o projeto ',
                      ),
                      TextSpan(
                        text: 'aqui',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () async => launch('https://github.com/FanaroEngineering/dogemp'),
                      ),
                      const TextSpan(text: '.'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
