import 'dart:async';

import 'package:flutter/material.dart';
import 'dashboard.dart';

class Loading extends StatefulWidget {
  const Loading({super.key, required this.time});

  final int time;

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  initState() {
    super.initState();
    Timer(
      Duration(seconds: widget.time),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cheahy Lao"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Text("Cheahy Lao"),
          ],
        ),
      ),
    );
  }
}
