import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/screens/splash/components/splash_body.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
