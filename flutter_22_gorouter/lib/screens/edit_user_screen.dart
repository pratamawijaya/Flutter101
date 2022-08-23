import 'package:flutter/material.dart';

class EditUserScreen extends StatelessWidget {
  final String name;

  const EditUserScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Edit User Screen $name"),
          ],
        ),
      ),
    );
  }
}
