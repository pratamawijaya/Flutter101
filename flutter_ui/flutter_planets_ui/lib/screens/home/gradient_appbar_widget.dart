import 'package:flutter_planets_ui/Themes.dart' as Theme;
import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String _title;
  final double _barHeight = 66.0;

  GradientAppBar(this._title);

  @override
  Widget build(BuildContext context) {
    final double statuBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statuBarHeight),
      height: statuBarHeight + _barHeight,
      child: Center(
        child: Text(_title, style: Theme.TextStyles.appBarTitle),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Theme.Colors.appBarGradientStart,
                Theme.Colors.appBarGradientEnd
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
    );
  }
}
