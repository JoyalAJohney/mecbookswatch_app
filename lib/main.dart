import 'package:flutter/material.dart';
import 'dart:async';
import './splash_screen.dart';
import './home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MecBooksWatch",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primarySwatch: Colors.teal,
        accentColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}



