import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/theme/constants.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';
import 'package:flutter_ui_ecommerce/widgets/default_button.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    "TOKOTO",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Lets shopping together",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 2),
                  Image.asset(
                    "assets/images/splash_1.png",
                    height: getProportionateScreenHeight(265),
                    width: getProportionateScreenWidth(235),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
