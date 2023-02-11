import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Coming soon....'),
      ),
      // backgroundColor: Theme.of(context).primaryColor,
      body: Column(
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
        ],
      ),
    );
  }
}
