import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';
import 'package:flutter_ui_nft_market/src/features/detail/detail_screen.dart';
import 'package:flutter_ui_nft_market/src/features/profile/profile_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case ProfileScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case DetailScreen.routeName:
        final args = routeSettings.arguments as Art;
        print("test data : ${args.name}");
        return MaterialPageRoute(builder: (_) => DetailScreen(args));
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
