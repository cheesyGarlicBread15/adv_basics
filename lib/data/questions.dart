import 'package:adv_basics/models/quiz_question.dart';

const List<QuizQuestion> questions = [
  QuizQuestion(
    question: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    question: 'What is the purpose of the pubspec.yaml file?',
    answers: [
      'To define the project dependencies',
      'To configure the project build settings',
      'To specify the project entry point',
      'To manage the project version control',
    ],
  ),
  QuizQuestion(
    question: 'Which widget is used for layout in Flutter?',
    answers: [
      'Container',
      'Column',
      'Row',
      'All of the above',
    ],
  ),
];