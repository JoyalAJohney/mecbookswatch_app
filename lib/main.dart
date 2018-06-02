import 'package:flutter/material.dart';
import 'dart:async';
import './splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MecBooksWatch",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.black, accentColor: Colors.yellow),
      home: SplashScreen(),
    );
  }
}



