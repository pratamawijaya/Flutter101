import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'clock_state.dart';

class ClockCubit extends Cubit<ClockState> {
  ClockCubit() : super(ClockInitial());

  TimeOfDay _timeOfDay = TimeOfDay.now();

  void updateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        _timeOfDay = TimeOfDay.now();
        print("time updated ${_timeOfDay.minute}");
        emit(ClockUpdated(_timeOfDay));
      } else {
        emit(ClockUpdated(_timeOfDay));
      }
    });
  }
}
