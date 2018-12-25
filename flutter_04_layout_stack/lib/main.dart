import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var imgStack = Stack(
      alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('images/janine.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black45),
          child: Text('Jannine',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        )
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Image Stack'),
        ),
        body: Center(
          child: imgStack,
        )
      ),
    );
  }
}
