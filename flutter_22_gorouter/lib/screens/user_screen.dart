import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserScreen extends StatelessWidget {
  final String name;

  const UserScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello $name"),
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  'edit',
                  params: {'name': name},
                );
              },
              child: Text("Edit User"),
            )
          ],
        ),
      ),
    );
  }
}
