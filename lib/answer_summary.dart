import 'package:flutter/material.dart';

class AnswerSummary extends StatelessWidget {
  final Map<String, Object> summary;
  const AnswerSummary({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          summary['number'].toString(),
          style: const TextStyle(color: Colors.white),
        ),
        Expanded(
          child: Column(
            children: [
              Text(summary['question'].toString(),
                  style: const TextStyle(color: Colors.white)),
              Text(summary['correct_answer'].toString(),
                  style: const TextStyle(color: Colors.green)),
              Text(summary['user_answer'].toString(),
                  style: const TextStyle(color: Colors.red)),
            ],
          ),
        )
      ],
    );
  }
}
