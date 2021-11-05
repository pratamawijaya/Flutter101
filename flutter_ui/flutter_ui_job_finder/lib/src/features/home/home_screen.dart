import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/home_appbar.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/job_list.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/search_card.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/tag_list.dart';
import 'package:flutter_ui_job_finder/src/utils/constants.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kBackgroundLightColor,
      body: SingleChildScrollView(
        child: Stack(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppbar(),
                SearchCard(),
                TagList(),
                JobList(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cases_outlined,
              size: 20,
            ),
            label: "Case",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              size: 20,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 20,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
