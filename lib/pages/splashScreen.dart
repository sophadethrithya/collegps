import 'dart:async';

import 'package:flutter/material.dart';
import 'package:collegps/pages/mainPage.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool change = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        change = false;
      });
    });
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => mainPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          child: Image.asset("assets/collegps.png"),
          duration: Duration(seconds: 2),
          width: change ? 100 : 200,
          height: change ? 100 : 200,
        ),
      ),
    );
  }
}
