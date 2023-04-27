
import 'package:flutter/material.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Beranda",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}
