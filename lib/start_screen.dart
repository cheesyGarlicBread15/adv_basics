import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 275,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.raleway(
              color: const Color(0xFFFBFF00),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.lightbulb),
          ),
        ],
      ),
    );
  }
}
