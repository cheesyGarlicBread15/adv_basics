import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;
  const AnswerButton({super.key, required this.answer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black45,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
        child: Text(
          answer,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
