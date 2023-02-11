import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/api.dart';
import 'dart:convert';
import '../main.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  _DashbaordState createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashboard> {
  void logout_processes() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    var res = await CallApi().postLogout(token, 'logout');
    var body = json.decode(res.body);
    localStorage.remove('user');
    localStorage.remove('token');
    Navigator.pushReplacement(
      context,
      new MaterialPageRoute(builder: (context) => MyApp()),
    );
  }

  int _selectedIndex = 0;
  var _bgColor = Colors.green;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            height: 60,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(_bgColor),
              ),
              onPressed: null,
              child: Text("Add User"),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        // onTap: _onItemTapped,
      ),
    );
  }
}
