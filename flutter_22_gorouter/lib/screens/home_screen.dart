import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen"),
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  'user',
                  params: {'name': "Johny Yes Papa"},
                );
              },
              child: Text("User"),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('about');
              },
              child: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
