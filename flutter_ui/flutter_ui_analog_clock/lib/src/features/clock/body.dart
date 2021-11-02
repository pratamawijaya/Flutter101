import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/clock_cubit.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/time_inhour_minute.dart';
import 'package:flutter_ui_analog_clock/src/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Yogyakarta, Indonesia | WIB",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinutes(),
        ],
      ),
    );
  }
}
