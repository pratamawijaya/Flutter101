import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/navigation/routes.dart';
import 'package:flutter_ui_ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter_ui_ecommerce/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
