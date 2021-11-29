import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_animated_tesla/src/features/home/home_controller.dart';
import 'package:provider/provider.dart';

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
                    Positioned(
                      right: constraint.maxWidth * 0.05,
                      child: DoorLock(
                        isLock: controller.isRightDoorLock,
                        press: controller.updateRightDoorLock,
                      ),
                    ),
                    Positioned(
                      left: constraint.maxWidth * 0.05,
                      child: DoorLock(
                        isLock: controller.isLeftDoorLock,
                        press: controller.updateLeftDoorLock,
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

class DoorLock extends StatelessWidget {
  DoorLock({Key? key, required this.press, required this.isLock})
      : super(key: key);

  final VoidCallback press;
  final bool isLock;

  var lockedDoorIcon = SvgPicture.asset(
    "assets/icons/door_lock.svg",
    key: Key("locked"),
  );
  var unlockedDoorIcon = SvgPicture.asset(
    "assets/icons/door_unlock.svg",
    key: Key("unlocked"),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isLock ? lockedDoorIcon : unlockedDoorIcon,
      ),
    );
  }
}
