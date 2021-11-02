import 'package:flutter/material.dart';
import 'package:flutter_ui_social_app/src/config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          CustomSocialHeader(),
          Stack(
            children: [
              Container(
                height: 100,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                height: 100,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Photos",
                          style: TextStyle(
                            color: secondColor,
                            fontSize: 16,
                          ),
                        ),
                        Text("567"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomSocialHeader extends StatelessWidget {
  const CustomSocialHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(75),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                color: mainColor,
              ),
              Icon(
                Icons.more_vert,
                color: mainColor,
              ),
            ],
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/avatar1.png"),
              ),
              boxShadow: [
                BoxShadow(
                  color: secondColor,
                  blurRadius: 40,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),
          Container(),
          Text(
            "Nanii",
            style: TextStyle(
                fontSize: 28, color: mainColor, fontWeight: FontWeight.w700),
          ),
          Text(
            "anumari@com",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: secondColor),
          )
        ],
      ),
    );
  }
}
