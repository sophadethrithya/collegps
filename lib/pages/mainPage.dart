import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:collegps/pages/formPage.dart';
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 222, 251),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28, right: 28, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "College Calculator",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Ubuntu-Medium",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "The college calculator will recommend you a college based off of many factors you input.",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: 180,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/roadmap1.jpg"),
                        Image.asset("assets/roadmap2.jpg"),
                        Image.asset("assets/roadmap3.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    color: Colors.white,
                    child: Text(
                      "Start",
                      style: TextStyle(fontFamily: "Roboto", fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => formPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blueAccent)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
