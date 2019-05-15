import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_10_http_and_list/api.dart';
import 'package:flutter_10_http_and_list/rocket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Http",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyList(),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  var rockets = new List<Rocket>();

  _getRockets(){
    API.getRockets().then((response){
      setState(() {
        Iterable list = json.decode(response.body);
        rockets = list.map((model) => Rocket.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getRockets();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rocket List"),
      ),
      body: ListView.builder(
        itemCount: rockets.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(rockets[index].rocket_name),
          );
        }
      ),
    );
  }
}