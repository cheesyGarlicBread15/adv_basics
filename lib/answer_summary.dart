import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerSummary extends StatelessWidget {
  final Map<String, Object> summary;
  const AnswerSummary({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    var colorTheme = (summary['correct_answer'] == summary['user_answer'])
        ? const Color(0xFF75bff8)
        : const Color.fromARGB(255, 255, 143, 143);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: colorTheme),
            child: Center(
              child: Text(
                summary['number'].toString(),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(summary['question'].toString(),
                    style: GoogleFonts.raleway(color: Colors.white)),
                Text(summary['correct_answer'].toString(),
                    style: const TextStyle(color: Colors.grey)),
                Text(summary['user_answer'].toString(),
                    style: TextStyle(color: colorTheme)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
