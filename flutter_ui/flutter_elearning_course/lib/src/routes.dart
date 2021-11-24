import 'package:flutter/material.dart';
import 'package:flutter_elearning_course/src/features/home/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          ),
        );
    }
  }
}
