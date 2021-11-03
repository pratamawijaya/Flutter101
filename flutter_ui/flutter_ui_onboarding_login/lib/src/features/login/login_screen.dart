import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_onboarding_login/src/utils/constants.dart';
import 'package:flutter_ui_onboarding_login/src/utils/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headline4,
            ),
            SvgPicture.asset("assets/icons/login.svg"),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Password",
              icon: Icons.lock,
              isPassword: true,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  const RoundedInputField(
      {Key? key,
      required this.hintText,
      this.icon = Icons.person,
      this.isPassword = false,
      required this.onChanged})
      : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: TextField(
        obscureText: isPassword ? true : false,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class LoginBackground extends StatelessWidget {
  Widget child;
  LoginBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: getProportionateScreenWidth(135),
            child: Image.asset("assets/images/main_top.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            width: getProportionateScreenWidth(135),
            child: Image.asset("assets/images/login_bottom.png"),
          ),
          child
        ],
      ),
    );
  }
}
