import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/routes.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Splash Screen"),
            ElevatedButton(
              onPressed: () => context.push(Routes.homeScreen.path),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Button"),
            ),
          ],
        ),
      ),
    );
  }
}
