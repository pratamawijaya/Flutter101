import 'package:flutter/material.dart';
import 'package:flutter_ui_chart/src/features/chart/chart_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case ChartScreen.routeName:
        return MaterialPageRoute(builder: (_) => ChartScreen());
        break;
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
