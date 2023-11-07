import 'package:flutter_ui_car_rental/presentation/pages/home/home_page.dart';
import 'package:flutter_ui_car_rental/presentation/pages/login/login_page.dart';
import 'package:flutter_ui_car_rental/presentation/pages/welcome/welcome_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          path: '/welcome',
          name: 'welcome',
          builder: (context, state) => WelcomePage(),
        ),
      ],
      initialLocation: '/welcome',
      debugLogDiagnostics: true,
    );
