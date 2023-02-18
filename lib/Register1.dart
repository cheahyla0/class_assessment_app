import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Register1(),
    debugShowCheckedModeBanner: false,
    ));
}

class Register1 extends StatefulWidget {
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
       padding:  EdgeInsets.fromLTRB(30, 139, 0, 206),
       width:  double.infinity,
       decoration:  BoxDecoration (
        color:  Color(0xffffffff),
        gradient:  LinearGradient (
          begin:  Alignment(-1.179, 0.139),
          end:  Alignment(0.22, 1.699),
          colors:  <Color>[Color(0xff22343c), Color(0xff1f2e35)],
          stops:  <double>[0.001, 1],
          ),
        ),
      child:  
    Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children:[
      Container(
        // rectanglecopy43aS (17:175)
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

      Container(
      // signinVBY (17:176)
        width:  349,
        child:  
        Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children:  [
          Container(
  // headingE98 (17:182)
          margin:  EdgeInsets.fromLTRB(2, 0, 0, 11),
          child:  
            Text(
              'Hello!',
              style: GoogleFonts.lato(
                fontSize:  42,
                fontWeight:  FontWeight.w700,
                height:  1.2,
                color:  Color(0xffffffff),
              ),
            ),
          ),

          Container(
            // letsintroduce7ii (17:181)
            margin:  EdgeInsets.fromLTRB(2, 0, 0, 37),
            child:  
            Text(
              'lets introduce',
              style: GoogleFonts.lato(
                fontSize:  24,
                fontWeight:  FontWeight.w400,
                height:  1.2,
                color:  Color(0xff96a7af),
              ),
            ),
          ),

          Container(
            // emailEoL (I17:180;0:1752)
            margin:  EdgeInsets.fromLTRB(2, 0, 0, 38),
            width:  347,
            child:  
            Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children:  [
                Container(
                  // autogroupgrpkBCn (QUCqAuUvngdB1M3N71grPk)
                  margin:  EdgeInsets.fromLTRB(0, 0, 178, 4),
                  width:  double.infinity,
                  child:  
                  Row(    
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:[
                      Container(
                      // iconiCi (I17:180;0:1753)
                      margin:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                      width:  27,
                      height:  48,
                      child: Icon(Icons.person,color: Color.fromRGBO(255, 197, 66, 100),),
                                      color: Color.fromRGBO(98, 91, 57, 100),
                      ),
                      Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child:  
                        Text(
                          'Your full name',
                          style: GoogleFonts.lato (
                            fontSize:  18,
                            fontWeight:  FontWeight.w400,
                            height:  1.2,
                            color:  Color(0xff96a7af),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // passwordgYr (I17:179;0:1742)
            margin:  EdgeInsets.fromLTRB(2, 0, 0, 64),
            width:  347,
              child:  
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
              Container(
            // autogroup4y8aDHt (QUCq2uiFYdZe3iJ3Un4Y8A)
  margin:  EdgeInsets.fromLTRB(0, 0, 210, 4),
  width:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // iconYqx (I17:179;0:1743)
  margin:  EdgeInsets.fromLTRB(0, 0, 10, 0),
  width:  27,
  height:  48,
  child: Icon(Icons.lock,color: Color.fromRGBO(255, 85, 95, 100),),
                  color: Color.fromRGBO(98, 58, 66, 100),

),
Text(
  // username5L6 (I17:179;0:1750)
  'Username',
  style: GoogleFonts.lato(
    fontSize:  18,
    fontWeight:  FontWeight.w400,
    height:  1.2,
    color:  Color(0xff96a7af),
  ),
),
  ],
),
),
Container(
  // linecav (I17:179;0:1749)
  margin:  EdgeInsets.fromLTRB(56, 0, 0, 0),
  width:  291,
  height:  2,

),
  ],
),
),
Container(
  // autogroup5xtxkSE (QUCpjAip6tXEfmx3qt5XTx)
  margin:  EdgeInsets.fromLTRB(0, 0, 34, 0),
  width:  double.infinity,
  height:  58,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // backbuttonUd8 (17:178)
  margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
  width:  58,
  height:  58,


),
TextButton(
  // nextbuttonQWn (17:177)
  onPressed:  () {},
  style:  TextButton.styleFrom (
    padding:  EdgeInsets.zero,
  ),
  child:  
Container(
  padding:  EdgeInsets.fromLTRB(91, 21, 91, 21),
  width:  243,
  height:  double.infinity,
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
  child:  
Container(
  // group24rE (I17:177;0:1735)
  width:  double.infinity,
  height:  double.infinity,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // next2YA (I17:177;0:1736)
  margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
  child:  
Text(
  'Next',
  textAlign:  TextAlign.center,
  style: GoogleFonts.lato (
    fontSize:  16,
    fontWeight:  FontWeight.w700,
    height:  1,
    color:  Color(0xffffffff),
  ),
),
),
Container(
  // shape9sg (I17:177;0:1739)
  width:  12,
  height:  9,
),
  ],
),
),
),
),
  ],
),
),
  ],
),
),
          ],
        ),
      ),
    );
  }
}