import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var container = Container(
      decoration: BoxDecoration(
        color: Colors.black26
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.black38),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/dog4.png'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.black38),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0))
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/dog4.png'),
                ),
              )
            ],
          )
        ],
      ),
    );

    return MaterialApp(
      title: 'Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Layout'),
        ),
        body: container,
      ),
    );
  }
}