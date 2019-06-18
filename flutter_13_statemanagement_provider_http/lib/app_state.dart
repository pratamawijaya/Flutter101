import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  AppState();

  String _url = "https://reqres.in/api/users?per_page=20";
  String _jsonResponse = "";
  bool _isFetch = false;

  String _displayText = "";

  void setDisplayText(String value) {
    _displayText = value;
    notifyListeners();
  }

  Future<void> fetchData() async {
    _isFetch = true;
    notifyListeners();

    var response = await http.get(_url);
    if (response.statusCode == 200) {
      _jsonResponse = response.body;
    }

    _isFetch = false;
    notifyListeners();
  }

  List<dynamic> getResponseJson() {
    if (_jsonResponse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(_jsonResponse);
      return json['data'];
    }
    return null;
  }

  String get getDisplayText => _displayText;

  String get getJsonResponse => _jsonResponse;

  bool get isFetch => _isFetch;
}
