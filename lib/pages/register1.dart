import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'signin.dart';
import 'register2.dart';

class Register1 extends StatefulWidget {
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 52, 60, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 200, 28, 0),
          child: Column(
            children: [
              Row(
                children: const <Widget>[
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 100),
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 19, 0, 37),
                    child: Text(
                      'Sign in to continue',
                      style: GoogleFonts.lato(
                        color: const Color.fromRGBO(150, 167, 175, 100),
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 37),
                        height: 48,
                        width: 38,
                        child: const Icon(
                          Icons.person,
                          color: Color.fromRGBO(255, 197, 66, 100),
                        ),
                        color: const Color.fromRGBO(98, 91, 57, 100),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 37),
                        height: 48,
                        width: 310,
                        child: const Align(
                          alignment: Alignment.center,
                          child: TextField(
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 100)),
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(150, 167, 175, 100),
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 100),
                                    width: 5.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: 38,
                        child: const Icon(
                          Icons.lock,
                          color: Color.fromRGBO(255, 85, 95, 100),
                        ),
                        color: const Color.fromRGBO(98, 58, 66, 100),
                      ),
                      Container(
                        height: 48,
                        width: 310,
                        child: const Align(
                          alignment: Alignment.center,
                          child: TextField(
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 100)),
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(150, 167, 175, 100),
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 100),
                                    width: 5.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 61, 0, 0),
                        child: SizedBox(
                          height: 58,
                          width: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(64, 223, 159, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                            child: (const Text("Back")),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 61, 0, 0),
                        child: SizedBox(
                          height: 58,
                          width: 250,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(64, 223, 159, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => Register2(),
                                ),
                              );
                            },
                            child: (const Text("Next")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
