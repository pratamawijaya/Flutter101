import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_planets_ui/data/model/Planet.dart';
import 'package:flutter_planets_ui/Themes.dart' as Theme;

import '../../Routes.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    // gambar planet
    final thumbPlanet = Container(
      alignment: FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 24),
      child: Hero(
        tag: 'planet-icon${planet.id}',
        child: Image(
          image: AssetImage(planet.image),
          height: Theme.Dimens.planetHeight,
          width: Theme.Dimens.planetWidth,
        ),
      ),
    );

    // card data planet
    final cardPlanet = Container(
      margin: EdgeInsets.only(left: 72.0, right: 24.0),
      decoration: BoxDecoration(
          color: Theme.Colors.planetCard,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
      child: Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // judul planet
            Text(
              planet.name,
              style: Theme.TextStyles.planetTitle,
            ),
            // lokasi planet
            Text(
              planet.location,
              style: Theme.TextStyles.planetLocation,
            ),
            // garis biru kecil dibawah
            Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 14.0,
                  color: Theme.Colors.planetDistance,
                ),
                Text(
                  planet.distance,
                  style: Theme.TextStyles.planetDistance,
                ),
                Text(
                  planet.gravity,
                  style: Theme.TextStyles.planetDistance,
                )
              ],
            ),
          ],
        ),
      ),
    );

    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: FlatButton(
        onPressed: () => _navigateTo(context, planet.id),
        child: Stack(
          children: <Widget>[
            cardPlanet,
            thumbPlanet,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {
    Routes.navigateTo(context, '/detail/${planet.id}',
        transition: TransitionType.fadeIn);
  }
}
