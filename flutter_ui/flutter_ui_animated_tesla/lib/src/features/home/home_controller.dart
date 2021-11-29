import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isMesinCapLock = true;
  bool isBagasiLock = true;
  int bottomNavSelectedIndex = 0;

  void updateSelectedIndex(int idx) {
    bottomNavSelectedIndex = idx;
    notifyListeners();
  }

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    print("rightDoorLocked : $isRightDoorLock");
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    print("leftDoorLocked :$isLeftDoorLock");
    notifyListeners();
  }

  void updateMesinCapLock() {
    isMesinCapLock = !isMesinCapLock;
    notifyListeners();
  }

  void updateBagasiLock() {
    isBagasiLock = !isBagasiLock;
    notifyListeners();
  }
}
