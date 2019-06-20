import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_planets_ui/data/model/Planet.dart';
import 'package:flutter_planets_ui/Themes.dart' as Theme;

class PlanetDetailBody extends StatelessWidget {
  final Planet planet;

  PlanetDetailBody(this.planet);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Theme.Colors.planetPageBackground,
          child: Center(
            child: prefix0.Hero(
              tag: 'planet-icon-${planet.id}',
              child: Image(
                image: prefix0.AssetImage(planet.image),
                height: Theme.Dimens.planetHeight,
                width: Theme.Dimens.planetWidth,
              ),
            ),
          ),
        )
      ],
    );
  }
}
