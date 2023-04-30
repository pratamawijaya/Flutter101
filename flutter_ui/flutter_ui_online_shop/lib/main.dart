import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_online_shop/app_theme.dart';
import 'package:flutter_ui_online_shop/features/homepage/main_screen.dart';

void main() {
  // runApp(const MyApp());
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      home: MainScreen(),
    );
  }
}
