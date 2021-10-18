import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_ecommerce/screens/signin/signin_screen.dart';
import 'package:flutter_ui_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen()
};
