part of 'clock_cubit.dart';

@immutable
abstract class ClockState {}

class ClockInitial extends ClockState {}

class ClockUpdated extends ClockState {
  TimeOfDay timeOfDay;

  ClockUpdated(this.timeOfDay);
}
