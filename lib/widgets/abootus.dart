import 'package:flutter/material.dart';
import 'package:class_assessment_app/pages/aboutus.dart';

class AbootUs extends StatelessWidget {
  final String name;
  final Text description;
  final Image image;

  const AbootUs(
      {super.key,
      required this.name,
      required this.description,
      required this.image});

  void _changePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => AboutUs(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Row(children: <Widget>[
      
      
      Column(children: <Widget>[
        image,
      ],),

      Padding(padding: EdgeInsets.only(left: 10),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Row(children: <Widget>[
          Text(name, style: TextStyle(color: Colors.white),)
        ],),
        Row(children: <Widget>[
          description
        ])
      ],)),
    ]),);
  }
}
