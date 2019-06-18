import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  AppState();

  String _displayText = "";

  void setDisplayText(String value) {
    _displayText = value;
    notifyListeners();
  }

  String get getDisplayText => _displayText;
}
