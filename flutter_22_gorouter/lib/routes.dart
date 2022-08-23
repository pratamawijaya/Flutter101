import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/about_screen.dart';
import 'screens/edit_user_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/user_screen.dart';

CustomTransitionPage<T> buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        // SlideTransition(
        //   position: Tween(
        //     begin: const Offset(1.0, 0.0),
        //     end: const Offset(0.0, 0.0),
        //   ).animate(animation),
        // )
        FadeTransition(opacity: animation, child: child),
  );
}

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
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition<void>(
            context: context, state: state, child: const HomeScreen());
      },
      routes: [
        GoRoute(
          path: 'about',
          name: 'about',
          builder: (context, state) {
            return const AboutScreen();
          },
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: const AboutScreen(),
            );
          },
        ),
        GoRoute(
          path: 'user/:name',
          name: 'user',
          builder: (context, state) {
            String nama = state.params["name"] ?? "no data";
            return UserScreen(name: nama);
          },
          pageBuilder: (context, state) {
            String nama = state.params["name"] ?? "no data";
            return buildPageWithDefaultTransition<void>(
                context: context, state: state, child: UserScreen(name: nama));
          },
          routes: [
            GoRoute(
              path: "edit",
              name: "edit",
              builder: (context, state) {
                String name = state.params["name"] ?? "no name";
                return EditUserScreen(name: name);
              },
              pageBuilder: (context, state) {
                String nama = state.params["name"] ?? "no data";
                return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: EditUserScreen(name: nama));
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
