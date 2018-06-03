import 'package:flutter/material.dart';


class AccountScreen extends StatelessWidget {

  final String title;
  // AccountScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
      ),
      body: Center(
        child: Text("Account Page"),
      ),
    );
  }
}