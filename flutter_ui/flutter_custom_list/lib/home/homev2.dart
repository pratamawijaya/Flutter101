import 'package:flutter/material.dart';

class HomeV2 extends StatefulWidget {
  @override
  _HomeV2State createState() => _HomeV2State();
}

class _HomeV2State extends State<HomeV2> {
  List<Widget> _listWidgets;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(itemBuilder: (context, index) {}),
      ),
    );
  }
}
