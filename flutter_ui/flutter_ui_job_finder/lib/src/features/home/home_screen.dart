import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/home_appbar.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
                flex: 1,
              )
            ],
          ),
          Column(
            children: [
              HomeAppbar(),
            ],
          ),
        ],
      ),
    );
  }
}
