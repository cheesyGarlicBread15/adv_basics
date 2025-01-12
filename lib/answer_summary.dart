import 'package:flutter/material.dart';

class AnswerSummary extends StatelessWidget {
  final Map<String, Object> summary;
  const AnswerSummary({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(summary['number'].toString()),
        Column(
          children: [
            Text(summary['question'].toString()),
            Text(summary['correct_answer'].toString()),
            Text(summary['user_answer'].toString()),
          ],
        )
      ],
    );
  }
}
