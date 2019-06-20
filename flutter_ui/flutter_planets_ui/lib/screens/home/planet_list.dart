import 'package:flutter/material.dart';
import 'package:flutter_planets_ui/Themes.dart' as Theme;
import 'package:flutter_planets_ui/data/PlanetRepository.dart';
import 'package:flutter_planets_ui/screens/home/planet_row_widget.dart';

class PlanetListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Theme.Colors.planetPageBackground,
        child: ListView.builder(
            itemCount: PlanetRepository.planets.length,
            itemBuilder: (context, index) {
              return PlanetRow(PlanetRepository.planets[index]);
            }),
      ),
    );
  }
}
