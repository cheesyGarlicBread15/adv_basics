import 'package:adv_basics/answer_summary.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final summary = getSummary();
    final totQuestions = questions.length;
    final totCorrectAnswers = summary.where((answerSummary) {
      return answerSummary['user_answer'] == answerSummary['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $totCorrectAnswers out of $totQuestions questions correctly!',
              style: GoogleFonts.raleway(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...getSummary().map((summary) {
                      return AnswerSummary(summary: summary);
                    }),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: onRestartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: Text(
                'Restart Quiz',
                style: GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              icon: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
