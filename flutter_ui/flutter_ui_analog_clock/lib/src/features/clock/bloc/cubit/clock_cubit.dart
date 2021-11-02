import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'clock_state.dart';

class ClockCubit extends Cubit<ClockState> {
  ClockCubit() : super(ClockInitial());

  TimeOfDay _timeOfDay = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();

  void updateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _dateTime = DateTime.now();

      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        _timeOfDay = TimeOfDay.now();
        emit(ClockUpdated(_timeOfDay, _dateTime));
      } else {
        emit(ClockUpdated(_timeOfDay, _dateTime));
      }
    });
  }
}
