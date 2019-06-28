import 'package:flutter/material.dart';
import 'package:flutter_planets_ui/Themes.dart' as Theme;

class PlanetDetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        children: <Widget>[
          BackButton(
            color: Theme.Colors.appBarIconColor,
          )
        ],
      ),
    );
  }
}
