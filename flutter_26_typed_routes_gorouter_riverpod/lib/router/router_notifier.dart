import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_26_typed_routes_gorouter_riverpod/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;
  bool isAuth = false;

  List<RouteBase> get routes => $appRoutes;

  @override
  Future<void> build() async {
    // isAuth = await ref.watch(
    //   authNotifierProvider.selectAsync(
    //       (data) => data.map(signedIn: (_) => true, signedOut: (_) => false)),
    // );

    ref.listenSelf((previous, next) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final isSplash = state.location == const SplashRoute().location;

    if (isSplash) {
      return isAuth ? const HomeRoute().location : const LoginRoute().location;
    }

    final isLoggingIn = state.location == const LoginRoute().location;
    if (isLoggingIn) return isAuth ? const HomeRoute().location : null;

    return isAuth ? null : const SplashRoute().location;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
