import 'package:flutter/material.dart';
import 'package:flutter_25_responsive_design_mediaquery/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            width: double.infinity,
            height: getProportionateScreenHeight(screenHeight * 0.85),
            child: Text("Text inside container"),
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                minHeight: getProportionateScreenHeight(48)
              ),
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xFF455154),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
