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
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'To build a widget that can rebuild itself when its state changes',
      'To build a widget that never changes',
      'To build a widget that can be used only once',
      'To build a widget that can be used multiple times',
    ],
  ),
];