import 'package:class_assessment_app/main.dart';
import 'package:flutter/material.dart';
import '../widgets/abootus.dart';

class AboutUs extends StatefulWidget {
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 40, left: 40, bottom: 40),
            child: Row(
              children: const <Widget>[
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            )),
        Column(
          children: <Widget>[
          AbootUs(
            name: "Cheahy Lao",
            description: Text("Currently Junior CS student", style: TextStyle(color: Colors.white)),
            image: Image.asset('images/icon.jpg', width: 150, height: 150, fit: BoxFit.fill),
          ),
          AbootUs(
            name: "Sakvipubp Suy",
            description: Text("Currently Junior CS student", style: TextStyle(color: Colors.white)),
            image: Image.asset('images/icon.jpg', width: 150, height: 150, fit: BoxFit.fill),
          ),
          AbootUs(
            name: "Sokvisal Mong",
            description: Text("Currently Junior CS student", style: TextStyle(color: Colors.white)),
            image: Image.asset('images/icon.jpg', width: 150, height: 150, fit: BoxFit.fill),
          )
        ]),
        ])      
    ;
  }
}
