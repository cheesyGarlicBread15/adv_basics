import 'package:adv_basics/answer_summary.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onRestartQuiz;
  final List<String> selectedAnswers;
  const ResultsScreen(
      {super.key, required this.onRestartQuiz, required this.selectedAnswers});

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'number': i + 1,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            ...getSummary().map((summary) {
              return AnswerSummary(summary: summary);
            }),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
