import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/screens/questions_screen.dart';
import 'package:adv_basics/screens/results_screen.dart';
import 'package:adv_basics/screens/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var _currentScreen = 'start-screen';

  void onSelectAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        switchScreen('results-screen');
      });
    }
  }

  void switchScreen(var screen) {
    setState(() {
      _currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget =
        StartScreen(startQuiz: () => switchScreen('questions-screen'));
    if (_currentScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: onSelectAnswer,
      );
    } else if (_currentScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        onRestartQuiz: () => switchScreen('start-screen'),
        selectedAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.green])),
          child: screenWidget,
        ),
      ),
    );
  }
}
