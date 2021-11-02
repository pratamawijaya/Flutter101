import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/clock_cubit.dart';
import 'package:flutter_ui_analog_clock/src/utils/size_config.dart';

class TimeInHourAndMinutes extends StatefulWidget {
  const TimeInHourAndMinutes({Key? key}) : super(key: key);

  @override
  _TimeInHourAndMinutesState createState() => _TimeInHourAndMinutesState();
}

class _TimeInHourAndMinutesState extends State<TimeInHourAndMinutes> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClockCubit, ClockState>(
      bloc: BlocProvider.of<ClockCubit>(context)..updateTime(),
      builder: (context, state) {
        if (state is ClockUpdated) {
          TimeOfDay _timeOfDay = state.timeOfDay;
          String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_timeOfDay.hour}:${_timeOfDay.minute}",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                width: 5,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  _period,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
