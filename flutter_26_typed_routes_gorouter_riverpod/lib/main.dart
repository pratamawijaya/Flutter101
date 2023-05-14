import 'package:flutter/material.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/app_router_observer.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/router/router_notifier.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/router/routes.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

void main() {
  // runApp(const MyApp());
}

var logger = Logger(
  printer: PrettyPrinter(),
);

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(routerNotifierProvider.notifier);
    final key = useRef(GlobalKey<NavigatorState>(debugLabel: 'routerKey'));

    final router = useMemoized(
      () => GoRouter(
        observers: [
          AppRouterObserver(),
        ],
        navigatorKey: key.value,
        refreshListenable: notifier,
        debugLogDiagnostics: true,
        //  initialLocation: $splashRoute, // todo: still cant find .path
        routes: notifier.routes,
        redirect: notifier.redirect,
      ),
    );
    return MaterialApp.router(
      routerConfig: router,
      title: "hook_riverpod + go_router",
      theme: ThemeData(
        primaryColor: Colors.amber[800],
      ),
    );
  }
}
