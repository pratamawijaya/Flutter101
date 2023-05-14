import 'package:flutter/material.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/error_screen.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/history_screen.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/home_screen.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/login_screen.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/profile_screen.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: "/",
  routes: [
    TypedGoRoute<ProfileRoute>(path: ProfileRoute.path),
    TypedGoRoute<HistoryRoute>(path: HistoryRoute.path),
  ],
)
class HomeRoute extends GoRouteData {
  static const path = '/home';

  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  static const path = '/login';

  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  static const path = '/splash';

  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

class ProfileRoute extends GoRouteData {
  static const path = 'profile';

  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

class HistoryRoute extends GoRouteData {
  static const path = 'history';

  const HistoryRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HistoryScreen();
  }
}

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ErrorScreen();
  }
}
