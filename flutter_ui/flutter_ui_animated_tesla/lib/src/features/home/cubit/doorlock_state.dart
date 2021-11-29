part of 'doorlock_cubit.dart';

@immutable
abstract class DoorlockState {}

class DoorlockInitial extends DoorlockState {}

class RightDoorState extends DoorlockState {
  bool isLocked;
  RightDoorState({
    required this.isLocked,
  });
}

class LeftDoorState extends DoorlockState {
  bool isLocked;
  LeftDoorState({
    required this.isLocked,
  });
}
