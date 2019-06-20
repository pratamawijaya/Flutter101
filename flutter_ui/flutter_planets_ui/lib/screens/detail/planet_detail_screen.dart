import 'package:flutter/material.dart';
import 'package:flutter_planets_ui/data/PlanetRepository.dart';
import 'package:flutter_planets_ui/data/model/Planet.dart';
import 'package:flutter_planets_ui/screens/detail/planet_detail_body.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  PlanetDetailScreen(String id) : planet = PlanetRepository.getPlanetById(id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PlanetDetailBody(planet),
        ],
      ),
    );
  }
}
