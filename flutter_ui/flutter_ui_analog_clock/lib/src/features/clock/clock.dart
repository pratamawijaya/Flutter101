import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/clock_cubit.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/theme_cubit.dart';
import 'package:flutter_ui_analog_clock/src/utils/constants.dart';
import 'package:flutter_ui_analog_clock/src/utils/size_config.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Container(
            width: getProportionateScreenWidth(320),
            height: getProportionateScreenHeight(320),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: kShadowColor.withOpacity(0.14),
                  blurRadius: 64,
                ),
              ],
            ),
            child: BlocBuilder<ClockCubit, ClockState>(
              builder: (context, state) {
                if (state is ClockUpdated) {
                  DateTime currentTime = state.dateTime;
                  return Transform.rotate(
                    angle: -pi / 2,
                    child: CustomPaint(
                      painter: ClockPainter(context, currentTime),
                    ),
                  );
                } else {
                  print("state clock unknown $state");
                  return Container();
                }
              },
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: BlocConsumer<ThemeCubit, ThemeState>(
            listener: (context, state) {},
            builder: (context, state) {
              bool isLightTheme = true;
              if (state is ChangeTheme) {
                isLightTheme = state.isLight;
              }
              return InkWell(
                onTap: () {
                  BlocProvider.of<ThemeCubit>(context).changeTheme();
                },
                child: SvgPicture.asset(
                  isLightTheme
                      ? "assets/images/Sun.svg"
                      : "assets/images/Moon.svg",
                  height: 24,
                  width: 24,
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Minute Calculation

    double minX =
        centerX + size.width * 0.35 * cos(dateTime.minute * 6 * pi / 180);
    double minY =
        centerY + size.width * 0.35 * sin(dateTime.minute * 6 * pi / 180);

    //Minute Line
    canvas.drawLine(
      center,
      Offset(minX, minY),
      Paint()
        ..color = Theme.of(context).accentColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Hour Calculation
    // dateTime.hour * 30 because 360/12 = 30
    // dateTime.minute * 0.5 each minute we want to turn our hour line a little
    double hourX = centerX +
        size.width *
            0.28 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width *
            0.28 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    // hour Line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Second Calculation

    double secondX =
        centerX + size.width * 0.35 * cos(dateTime.second * 6 * pi / 180);
    double secondY =
        centerY + size.width * 0.35 * sin(dateTime.second * 6 * pi / 180);

    // Second Line
    canvas.drawLine(
        center,
        Offset(secondX, secondY),
        Paint()
          ..color = Theme.of(context).primaryColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3);

    // center Dots
    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color ?? Colors.white;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
