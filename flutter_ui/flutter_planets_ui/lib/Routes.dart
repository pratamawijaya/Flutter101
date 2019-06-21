import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_planets_ui/screens/detail/planet_detail_screen.dart';

class Routes {
  static final Router _routes = Router();

  static var planetDetailHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return PlanetDetailScreen(params["id"][0]);
  });

  static void initRoutes() {
    _routes.define("/detail/:id", handler: planetDetailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _routes.navigateTo(context, route, transition: transition);
  }
}
