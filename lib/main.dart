import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/Register1.dart';
import 'dart:async';
import 'SignIn.dart';

void main(){  
  runApp(
    MaterialApp(  
       home:MainPage(),
    )  
);
}

class MainPage extends StatefulWidget{  
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
 void initState(){
	super.initState();
	// need to import 'dart:async' to use timer function
	Timer(Duration(seconds:05),
	()=>Navigator.pushReplacement(context,
	MaterialPageRoute(builder:(context)=>SignIn())
	// context()=> class name of file we want to go to and don't forget to import // file
	)
	);
}

@override
  Widget build(BuildContext context){
    return Scaffold(
      //Body section of the app
       body: Center(  
         child: Container(
            padding:  EdgeInsets.fromLTRB(38, 157, 40, 156),
            width:  double.infinity,
            decoration:  BoxDecoration (
              gradient:  LinearGradient (
                begin:  Alignment(-1.179, 0.139),
                end:  Alignment(0.22, 1.699),
                colors:  <Color>[Color(0xff22343c), Color(0xff1f2e35)],
                stops:  <double>[0.001, 1],
              ),
            ),
              child:  
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                  Container(
                    // paragonlogowhite1Vxn (21:3306)
                    margin:  EdgeInsets.fromLTRB(2, 0, 0, 100),
                    width:  143,
                    height:  372,
                    child: Image.asset("img/paragonlogo.png"),
                  ),
                  Text(
                    // headingoia (17:252)
                    'Join our awesome CS361 class',
                    style: GoogleFonts.lato (
                      fontSize:  22,
                      fontWeight:  FontWeight.w700,
                      height:  1.2,
                      color:  Color(0xffffffff),
                    ),
                  ),
                ],
            ),
          ),
        ),
  );
}  
}