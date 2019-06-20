import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color appBarTitle = const Color(0xFFFFFFFF);

  static const Color planetTitle = const Color(0xFFFFFFFF);
  static const Color planetLocation = const Color(0x66FFFFFF);
}

class Dimens {
  const Dimens();

  static const planetWidth = 100.0;
  static const planetHeight = 100.0;
}

class TextStyles {
  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 36.0);

  static const TextStyle planetTitle = const TextStyle(
      color: Colors.planetTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);

  static const TextStyle planetLocation = const TextStyle(
      color: Colors.planetLocation,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);
}
