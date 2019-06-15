import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var anjing = Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 5.0, color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
          margin: const EdgeInsets.all(4.0),
          child: Image.asset('images/dog4.png'),
        )
      ],
    );

    var gridView = GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return anjing;
        }));

    return MaterialApp(
      title: 'Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Layout'),
        ),
        body: gridView,
      ),
    );
  }
}
