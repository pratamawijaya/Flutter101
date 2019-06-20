import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_planets_ui/screens/detail/planet_detail_screen.dart';

class Routes {
  static final Router _routes = Router();

  static var planetDetailHandler =
      Handler(handlerFunc: (BuildContext contex, Map<String, dynamic> params) {
    return PlanetDetailScreen(params["id"]);
  });

  static void initRoutes() {
    _routes.define("/detail/:id", handler: planetDetailHandler);
  }

  static void navigateTo(contex, String route, {TransitionType transition}) {
    _routes.navigateTo(contex, route, transition: transition);
  }
}
