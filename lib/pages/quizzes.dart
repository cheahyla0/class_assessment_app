import 'package:flutter/material.dart';
import 'package:class_assessment_app/widgets/quiz.dart';

class Quizzes extends StatefulWidget {
  const Quizzes({super.key});

  @override
  State<Quizzes> createState() => _QuizzesState();
}

class _QuizzesState extends State<Quizzes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes', style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: const <Widget>[
                Quiz(color: Colors.green, title: "Quiz 1"),
                Quiz(color: Colors.blue, title: "Quiz 2"),
              ]),
              Row(children: const <Widget>[
                Quiz(color: Colors.red, title: "Quiz 3"),
                Quiz(color: Colors.purple, title: "Quiz 4"),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
