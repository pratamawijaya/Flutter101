import 'package:flutter/material.dart';
import 'package:flutter_ui_magicbook/configs/themes.dart';
import 'package:flutter_ui_magicbook/features/onboarding/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter MagicBook",
      theme: lightThemeData(context),
      home: const OnboardingScreen(),
    );
  }
}
