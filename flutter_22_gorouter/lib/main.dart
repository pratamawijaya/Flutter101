import 'package:flutter/material.dart';
import 'package:flutter_22_gorouter/screens/about_screen.dart';
import 'package:flutter_22_gorouter/screens/edit_user_screen.dart';
import 'package:flutter_22_gorouter/screens/home_screen.dart';
import 'package:flutter_22_gorouter/screens/login_screen.dart';
import 'package:flutter_22_gorouter/screens/user_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) {
            return const LoginScreen();
          }),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
              path: 'about',
              name: 'about',
              builder: (context, state) {
                return const AboutScreen();
              }),
          GoRoute(
            path: 'user/:name',
            name: 'user',
            builder: (context, state) {
              String nama = state.params["name"] ?? "no data";
              return UserScreen(name: nama);
            },
            routes: [
              GoRoute(
                path: "edit",
                name: "edit",
                builder: (context, state) {
                  String name = state.params["name"] ?? "no name";
                  return EditUserScreen(name: name);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
