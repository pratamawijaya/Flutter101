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
    var lockedDoorIcon = SvgPicture.asset("assets/icons/door_lock.svg");
    var unlockedDoorIcon = SvgPicture.asset("assets/icons/door_unlock.svg");

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
                          bool _rightDoorState = false;
                          if (state is RightDoorState) {
                            _rightDoorState = state.isLocked;
                          }
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
                          bool _leftDoorState = false;
                          if (state is LeftDoorState) {
                            _leftDoorState = state.isLocked;
                          }
                          return Positioned(
                            left: constraint.maxWidth * 0.05,
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<DoorlockCubit>()
                                    .updateLeftDoorState();
                              },
                              child: _leftDoorState
                                  ? SvgPicture.asset(
                                      "assets/icons/door_lock.svg")
                                  : SvgPicture.asset(
                                      "assets/icons/door_unlock.svg"),
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
