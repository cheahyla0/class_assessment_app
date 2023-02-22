import 'package:flutter/material.dart';
import '../widgets/lesson.dart';

class Dashboard extends StatefulWidget {
  _DashbaordState createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40, left: 40),
          child: Row(
            children: const <Widget>[
              Text(
                "Courses",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: const <Widget>[
              Lesson(color: Colors.green, title: "Math 101"),
              Lesson(color: Colors.blue, title: "Math 102"),
            ]),
            Row(children: const <Widget>[
              Lesson(color: Colors.red, title: "Math 103"),
              Lesson(color: Colors.purple, title: "Math 104"),
            ]),
          ],
          ),
      ],
    );
  }
}
