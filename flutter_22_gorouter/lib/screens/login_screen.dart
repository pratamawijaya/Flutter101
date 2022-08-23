import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Screen"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/home");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
