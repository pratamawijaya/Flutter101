import 'package:flutter/material.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/main.dart';

class AppRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.i("didPush $route");
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.i("didPop $route");
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.i("didRemove $route");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.i("didReplace $newRoute");
  }
}
