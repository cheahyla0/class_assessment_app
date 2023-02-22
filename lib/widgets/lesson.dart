import 'package:class_assessment_app/pages/quizzes.dart';
import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  final Color color;
  final String title;

  const Lesson({super.key, required this.color, required this.title});

  void _changePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const Quizzes(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {_changePage(context)},
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 40),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
