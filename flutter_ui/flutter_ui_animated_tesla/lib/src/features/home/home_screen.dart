import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_animated_tesla/src/features/home/cubit/doorlock_cubit.dart';
import 'package:flutter_ui_animated_tesla/src/features/home/home_controller.dart';
import 'package:provider/src/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    var lockedDoorIcon = SvgPicture.asset(
      "assets/icons/door_lock.svg",
      key: Key("locked"),
    );
    var unlockedDoorIcon = SvgPicture.asset(
      "assets/icons/door_unlock.svg",
      key: Key("unlocked"),
    );

    return AnimatedBuilder(
        animation: HomeController(),
        builder: (context, snapshot) {
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
                      BlocBuilder<DoorlockCubit, DoorlockState>(
                        builder: (context, state) {
                          bool _rightDoorState =
                              context.read<DoorlockCubit>().rightDoorIsLocked;
                          return Positioned(
                            right: constraint.maxWidth * 0.05,
                            child: GestureDetector(
                              onTap: () {
                                // _homeController.updateRightDoorLock();
                                context
                                    .read<DoorlockCubit>()
                                    .updateRightDoorState();
                              },
                              child: _rightDoorState
                                  ? lockedDoorIcon
                                  : unlockedDoorIcon,
                            ),
                          );
                        },
                      ),
                      BlocBuilder<DoorlockCubit, DoorlockState>(
                        builder: (context, state) {
                          bool _leftDoorState =
                              context.read<DoorlockCubit>().leftDoorIsLocked;
                          return Positioned(
                            left: constraint.maxWidth * 0.05,
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<DoorlockCubit>()
                                    .updateLeftDoorState();
                              },
                              child: _leftDoorState
                                  ? lockedDoorIcon
                                  : unlockedDoorIcon,
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        });
  }
}
