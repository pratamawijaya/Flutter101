import 'package:flutter/material.dart';
import 'package:flutter_planets_ui/Routes.dart';
import 'package:flutter_planets_ui/screens/home/home_screen.dart';

void main() {
  Routes.initRoutes();

  runApp(new MaterialApp(
    title: "Demo Ui Planets",
    home: HomeScreen(),
  ));
}
