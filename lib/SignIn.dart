import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:google_fonts/google_fonts.dart'; 
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_project/Register1.dart';

void main() {
  runApp(MaterialApp(
    home:SignIn(),
    debugShowCheckedModeBanner: false,
    ));
}

class SignIn extends StatefulWidget {
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 52, 60, 100),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.fromLTRB(28, 200, 28, 0),
        child: Column(
          children: [
            Container(
              // rectanglecopy4WvE (17:175)
              margin:  EdgeInsets.fromLTRB(2, 0, 0, 28),
              width:  45,
              height:  43,
              decoration:  BoxDecoration (
                borderRadius:  BorderRadius.circular(12),
                gradient:  LinearGradient (
                  begin:  Alignment(-1, -1),
                  end:  Alignment(-1, 1),
                  colors:  <Color>[Color(0xff3fdf9e), Color(0xff3ed598)],
                  stops:  <double>[0, 1],
                ),
                boxShadow:  [
                  BoxShadow(
                    color:  Color(0x4c0fda88),
                    offset:  Offset(0, 2),
                    blurRadius:  2,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text('Welcome!',
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
                  padding: const EdgeInsets.fromLTRB(0,19,0,37),
                child: Text('Sign in to continue',
                style: GoogleFonts.lato(
                    color: Color.fromRGBO(150, 167, 175, 100),
                    fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          Column(
            children:[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 37),
                  height:48,
                  width: 38,
                  child: Icon(Icons.person,color: Color.fromRGBO(255, 197, 66, 100),),
                  color: Color.fromRGBO(98, 91, 57, 100),
                  ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 37),
                  height:48,
                  width: 310,
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 100)),
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(150, 167, 175, 100),
                        fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 100),width: 5.0),
                        ),
                      ),
                    ),
                  )
                  )
                ],
              ),

              Row(
              children: <Widget>[
                Container(
                  height:48,
                  width: 38,
                  child: Icon(Icons.lock,color: Color.fromRGBO(255, 85, 95, 100),),
                  color: Color.fromRGBO(98, 58, 66, 100),
                  ),
                Container(
                  height:48,
                  width: 310,
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 100)),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(150, 167, 175, 100),
                        fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 100),width: 5.0),
                        ),
                      ),
                    ),
                  )
                  )
                ],
              ),
                ],
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 61, 0, 0),
                    alignment: Alignment.center,
                  child:SizedBox(
                    height: 58,
                    width: 350,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Color.fromRGBO(64, 223, 159, 100),
                      ),
                      onPressed: (){
                        Navigator.push(
		                    context,new MaterialPageRoute(builder: (context)=> Register1())
	                      );
                      },
                      child:(Text("Sign In")),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                  // forgotui2 (15:64)
                  margin:  EdgeInsets.fromLTRB(0, 36, 0, 0),
                  child:  
                Text(
                  'Forgot password?',
                  textAlign:  TextAlign.center,
                  style:  GoogleFonts.lato (
                    fontSize:  14,
                    fontWeight:  FontWeight.w500,
                    height:  1.7142857143,
                    color:  Color(0xff96a7af),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0, 31, 0, 0),
                alignment: Alignment.center,
                  child:SizedBox(
                    height: 58,
                    width: 350,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Color.fromRGBO(40, 96, 83, 100),
                      ),
                      onPressed: (){
                        Navigator.push(
		                    context,new MaterialPageRoute(builder: (context)=> Register1())
	                      );
                      },
                      child:(Text("Create an account",
                      style: TextStyle(
                        color: Color.fromRGBO(61, 213, 152, 100),
                      ),
                      )),
                      ),
                    ),
                  ),


            ],
          )
        )
      ),
    );
  }
}