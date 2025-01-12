import 'package:adv_basics/buttons/answer_button.dart';
import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // from another file
    QuizQuestion currentQuestion = questions[currentQuestionIndex];

    /**
     * currentQuestionIndex shuold not be inside build method since every time build method is called (i.e. setstate)
     * currentQuestionIndex will always be re initialized to 0
     */

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            /**.map returns a list of AnswerButtons ([AnswerButton, AnswerButton, ...]), we need widgets not list,
             * to return the list as the values inside which we need, add three dots '...' before the list
             */
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answer: answer,
                onTap: () => answerQuestion(answer),
              );
            }),
          ],
        ),
      ),
    );
  }
}
