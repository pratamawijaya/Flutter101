import 'package:flutter/material.dart';

void main() => runApp(SimpleList());

class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Simple List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_camera),
              title: Text('Camera'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );      
  }
}