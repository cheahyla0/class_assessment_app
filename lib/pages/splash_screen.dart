import 'dart:async';

import 'package:flutter/material.dart';
import 'signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.time});

  final int time;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(
      Duration(seconds: widget.time),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignIn(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Image(image: AssetImage('images/logo.png')),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Join Our Awesome CS 361 class",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
