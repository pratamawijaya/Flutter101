import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("detail"),
      ),
    );
  }
}
