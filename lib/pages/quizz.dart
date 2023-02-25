import 'package:flutter/material.dart';
import 'package:class_assessment_app/widgets/quiz.dart';
import 'package:class_assessment_app/widgets/question.dart';

class Quizz extends StatefulWidget {
  final String numberNo;
  const Quizz({super.key, required this.numberNo});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz ${widget.numberNo}',
          style: const TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: <Widget>[
          const Question(
            question: '1. How are you?',
            answers: ['I am fine.', 'I am not fine.', 'Good Bye.'],
          ),
          const Question(
            question: '2. How are you?',
            answers: ['I am fine.', 'I am not fine.', 'Good Bye.'],
          ),
          const Question(
            question: '3. How are you?',
            answers: ['I am fine.', 'I am not fine.', 'Good Bye.'],
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey[500]),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
