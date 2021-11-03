import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_onboarding_login/src/features/login/login_screen.dart';
import 'package:flutter_ui_onboarding_login/src/features/signup/signup_screen.dart';
import 'package:flutter_ui_onboarding_login/src/utils/constants.dart';
import 'package:flutter_ui_onboarding_login/src/utils/size_config.dart';
import 'package:flutter_ui_onboarding_login/src/utils/theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const String routeName = "/onboarding";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: OnboardingBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: getProportionateScreenHeight(340),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            // login
            Container(
              width: getProportionateScreenWidth(300),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
                style: primaryButtonStyle,
              ),
            ),
            // sign up
            Container(
              width: getProportionateScreenWidth(300),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                },
                child: Text(
                  "Sign Up",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.black),
                ),
                style: primaryLightButtonStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingBackground extends StatelessWidget {
  Widget child;

  OnboardingBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png"),
            width: getProportionateScreenWidth(130),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/main_bottom.png"),
            width: getProportionateScreenWidth(130),
          ),
          child
        ],
      ),
    );
  }
}
