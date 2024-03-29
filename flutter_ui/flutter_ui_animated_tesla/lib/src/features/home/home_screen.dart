import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_animated_tesla/src/utils/constants.dart';
import 'package:flutter_ui_animated_tesla/src/widgets/door_lock.dart';
import 'package:provider/provider.dart';

import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) {
        return Scaffold(
          bottomNavigationBar: TeslaBottomNavigationBar(
            onTap: (value) {
              controller.updateSelectedIndex(value);
            },
            selectedTab: controller.bottomNavSelectedIndex,
          ),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: constraint.maxHeight * 0.1),
                      child: SvgPicture.asset(
                        "assets/icons/Car.svg",
                        width: double.infinity,
                      ),
                    ),
                    // right door
                    AnimatedPositioned(
                      duration: defaultAnimDuration,
                      right: controller.bottomNavSelectedIndex == 0
                          ? constraint.maxWidth * 0.05
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        duration: defaultAnimDuration,
                        opacity: controller.bottomNavSelectedIndex == 0 ? 1 : 0,
                        child: DoorLock(
                          isLock: controller.isRightDoorLock,
                          press: controller.updateRightDoorLock,
                        ),
                      ),
                    ),
                    // left door
                    AnimatedPositioned(
                      duration: defaultAnimDuration,
                      left: controller.bottomNavSelectedIndex == 0
                          ? constraint.maxWidth * 0.05
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        opacity: controller.bottomNavSelectedIndex == 0 ? 1 : 0,
                        duration: defaultAnimDuration,
                        child: DoorLock(
                          isLock: controller.isLeftDoorLock,
                          press: controller.updateLeftDoorLock,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultAnimDuration,
                      top: controller.bottomNavSelectedIndex == 0
                          ? constraint.maxHeight * 0.18
                          : constraint.maxHeight / 2,
                      child: AnimatedOpacity(
                        opacity: controller.bottomNavSelectedIndex == 0 ? 1 : 0,
                        duration: defaultAnimDuration,
                        child: DoorLock(
                          isLock: controller.isMesinCapLock,
                          press: controller.updateMesinCapLock,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultAnimDuration,
                      bottom: controller.bottomNavSelectedIndex == 0
                          ? constraint.maxHeight * 0.18
                          : constraint.maxHeight / 2,
                      child: AnimatedOpacity(
                        opacity: controller.bottomNavSelectedIndex == 0 ? 1 : 0,
                        duration: defaultAnimDuration,
                        child: DoorLock(
                          isLock: controller.isBagasiLock,
                          press: controller.updateBagasiLock,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];

class TeslaBottomNavigationBar extends StatelessWidget {
  const TeslaBottomNavigationBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: List.generate(
        navIconSrc.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIconSrc[index],
            color: index == selectedTab ? kPrimaryColor : Colors.white54,
          ),
          label: "",
        ),
      ),
    );
  }
}
