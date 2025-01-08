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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'question here',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
              child: const Text(
                'answer 1',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
              child: const Text(
                'answer 2',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
              child: const Text(
                'answer 3',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
              child: const Text(
                'answer 4',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
