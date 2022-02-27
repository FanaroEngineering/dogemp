import 'package:dogemp/screens/lectures_screen.dart';
import 'package:flutter/material.dart';

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
              children: const [
                Text(
                  '1. Qual é o objetivo?',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text('O objetivo é, acima de tudo, criar uma comunidade sólida '
                    'de Go com o costume de revisar partidas — de qualidade — '
                    'e focar em aprendizado. Durante anos, a comunidade de Go '
                    'em língua portuguesa — todos os países falantes são '
                    'bem-vindos — esteve esporádica e inconsistente, mudemos '
                    'esse costume a partir de agora.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
