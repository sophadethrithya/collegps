import 'dart:async';
import 'package:collegps/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:collegps/pages/mainPage.dart';

void main() {
  //this was add to ensure the data that we waited for are pushed into our app
  WidgetsFlutterBinding.ensureInitialized();

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collegps',
      theme: ThemeData(
      primaryColor: Colors.white,
        fontFamily: "Roboto-Medium",
      ),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}