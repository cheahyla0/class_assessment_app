import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'register1.dart';
import 'home_page.dart';

class SignIn extends StatefulWidget {
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                          ))
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
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(150, 167, 175, 100),
                                  fontSize: 18,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 100),
                                    width: 5.0,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 61, 0, 0),
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 58,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(64, 223, 159, 100),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                        child: (const Text("Sign In")),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // forgotui2 (15:64)
                margin: const EdgeInsets.fromLTRB(0, 36, 0, 0),
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.7142857143,
                    color: const Color(0xff96a7af),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 31, 0, 0),
                alignment: Alignment.center,
                child: SizedBox(
                  height: 58,
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(40, 96, 83, 100),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => Register1(),
                        ),
                      );
                    },
                    child: (const Text(
                      "Create an account",
                      style: TextStyle(
                        color: Color.fromRGBO(61, 213, 152, 100),
                      ),
                    )),
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
