import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MecBooksWatch"
        ),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Joyal A Johney"),
              accountEmail: Text("joyalajohny@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P"),
              ),
            ),
            ListTile(
              title: Text("My Account"),
              trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Buy Books"),
            ),
            ListTile(
              title: Text("Sell Books"),
            ),
            ListTile(
              title: Text("Logout"),
            ),
            Divider(),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Buy Books Page"),
        ),
      ),
    );
  }
}