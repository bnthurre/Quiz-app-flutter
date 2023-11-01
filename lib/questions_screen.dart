import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'the questions.........',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
        ],
      ),
    );
  }
}