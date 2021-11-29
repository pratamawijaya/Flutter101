import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doorlock_state.dart';

class DoorlockCubit extends Cubit<DoorlockState> {
  DoorlockCubit() : super(DoorlockInitial());

  bool rightDoorIsLocked = true;
  bool leftDoorIsLocked = true;

  void updateRightDoorState() {
    rightDoorIsLocked = !rightDoorIsLocked;
    emit(RightDoorState(isLocked: rightDoorIsLocked));
  }

  void updateLeftDoorState() {
    leftDoorIsLocked = !leftDoorIsLocked;
    emit(LeftDoorState(isLocked: leftDoorIsLocked));
  }
}
