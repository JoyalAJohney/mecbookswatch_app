import './account_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './sell_screen.dart';


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
          "MecBooksWatch",
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
              onTap: ()=> {
                Navigator.of(context).pop():
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context)=>
                  AccountScreen()
                )),
              }
            ),
            ListTile(
              title: Text("Buy Books"),
              onTap: ()=> Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text("Sell Books"),
              onTap: ()=> {
                Navigator.of(context).pop():
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                  SellScreen("Sell Page")
                ))
              }
            ),
            ListTile(
              title: Text("Logout"),
            ),
            Divider(),
          ],
        ),
      ),
      body: Container(
        
      ),
    );
  }
}