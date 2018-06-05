import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => new _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  final String url = "https://swapi.co/api/people/";
  List data;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      this.getJsonData();
    }

    Future<String> getJsonData() async{
      var response = await http.get(
        // Encode the url
        Uri.encodeFull(url),
        // Only accept JSON response
        headers: {"Accept": "application/json"}
      );

      print(response.body);

      setState(() {
        var convertDataToJson = JSON.decode(response.body);
        data = convertDataToJson['results'];   
      });

      return "Success";
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Retrieve JSON via HTTP Get"
        ),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0: data.length,
        itemBuilder: (BuildContext context,int index){
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      child: Text(data[index]["name"]),
                      padding: const EdgeInsets.all(20.0),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),  
    );
  }
}