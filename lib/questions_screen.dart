import 'package:adv_basics/buttons/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'question here',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answer: 'answer 1',
            onTap: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          AnswerButton(
            answer: 'answer 2',
            onTap: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          AnswerButton(
            answer: 'answer 3',
            onTap: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          AnswerButton(
            answer: 'answer 4',
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Next'))
        ],
      ),
    );
  }
}
