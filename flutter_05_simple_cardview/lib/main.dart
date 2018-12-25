import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var simpleCard = SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('My City'),
              leading: Icon(Icons.restaurant_menu, color: Colors.red[500]),
            ),
            Divider(),
            ListTile(
              title: Text('021 212 212',
                  style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(Icons.phone, color: Colors.red[500]),
            )
          ],
        ),
      ),
    );

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Simple Cardview'),
          ),
          body: simpleCard,
        ));
  }
}
