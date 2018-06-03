import 'package:flutter/material.dart';

class SellScreen extends StatelessWidget {

  final String title;

  SellScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}