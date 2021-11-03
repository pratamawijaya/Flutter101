import 'package:flutter/material.dart';
import 'package:flutter_ui_onboarding_login/src/features/login/login_screen.dart';
import 'package:flutter_ui_onboarding_login/src/features/onboarding/onboarding_screen.dart';
import 'package:flutter_ui_onboarding_login/src/features/signup/signup_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (_, __, ___) => LoginScreen(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      // return MaterialPageRoute(builder: (_) => LoginScreen());
      case OnboardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case SignupScreen.routeName:
        return MaterialPageRoute(builder: (_) => SignupScreen());
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
