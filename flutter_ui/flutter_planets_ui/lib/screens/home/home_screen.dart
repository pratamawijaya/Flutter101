import 'package:flutter/material.dart';
import 'package:flutter_planets_ui/screens/home/gradient_appbar_widget.dart';
import 'package:flutter_planets_ui/screens/home/planet_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatefulWidget {
  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GradientAppBar("Planets"),
        PlanetListScreen()
      ],
    );
  }
}
