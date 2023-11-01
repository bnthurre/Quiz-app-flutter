import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final currentquestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentquestion.text,
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: currentquestion.answers[0], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[1], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[2], onTap: () {}),
          AnswerButton(answerText: currentquestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
