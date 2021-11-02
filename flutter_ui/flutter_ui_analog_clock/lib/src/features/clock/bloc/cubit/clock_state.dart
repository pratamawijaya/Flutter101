part of 'clock_cubit.dart';

@immutable
abstract class ClockState {}

class ClockInitial extends ClockState {}

class ClockUpdated extends ClockState {
  TimeOfDay timeOfDay;
  DateTime dateTime;

  ClockUpdated(this.timeOfDay, this.dateTime);
}

class TimeUpdated extends ClockState {
  DateTime dateTime;

  TimeUpdated(this.dateTime);
}
