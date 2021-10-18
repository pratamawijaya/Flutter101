import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_ecommerce/screens/home/home_screen.dart';
import 'package:flutter_ui_ecommerce/screens/signin/signin_screen.dart';
import 'package:flutter_ui_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
