import 'dart:convert';

import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => new _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  List data;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Results"
        ),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('load_json/person.json'),
            builder: (context,snapshot){
              // Decode JSON
              var mydata = JSON.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context,int index){
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Name: " + mydata[index]["name"]),
                        Text("Age: " + mydata[index]["age"]),
                        Text("Height: " + mydata[index]["height"]),
                        Text("Gender: " + mydata[index]["gender"]),
                        Text("Hair Color: " + mydata[index]["hair_color"]),
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}