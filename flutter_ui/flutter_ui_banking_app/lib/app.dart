import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/configs/themes.dart';
import 'package:flutter_ui_banking_app/routes.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
      title: "Banking App",
      theme: lightThemeData(context),
    );
  }
}
