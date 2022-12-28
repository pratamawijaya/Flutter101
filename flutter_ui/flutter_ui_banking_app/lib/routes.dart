import 'package:flutter_ui_banking_app/ui/home/home_screen.dart';
import 'package:flutter_ui_banking_app/ui/promo/promo_screen.dart';
import 'package:flutter_ui_banking_app/ui/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  splashScreen("/"),
  homeScreen("/home"),
  promoScreen("promo"),
  ;

  const Routes(this.path);
  final String path;
}

class AppRouter {
  GoRouter get router => _goRouter;

  late final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: ((context, state) {
          return SplashScreen();
        }),
      ),
      GoRoute(
        path: Routes.homeScreen.path,
        name: Routes.homeScreen.name,
        builder: (context, state) {
          return HomeScreen();
        },
        routes: <GoRoute>[
          GoRoute(
              path: Routes.promoScreen.path,
              name: Routes.promoScreen.name,
              builder: ((context, state) {
                return PromoScreen();
              }))
        ],
      ),
    ],
  );
}
