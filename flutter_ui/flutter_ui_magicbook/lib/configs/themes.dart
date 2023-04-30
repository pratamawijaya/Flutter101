import 'package:flutter/material.dart';
import 'package:flutter_ui_magicbook/configs/colors.dart';
import 'package:google_fonts/google_fonts.dart';

AppBarTheme appBarTheme = const AppBarTheme(color: kPrimaryColor, elevation: 0);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      headlineLarge: const TextStyle(
          color: kBodyTextColorLight,
          fontSize: 36,
          fontWeight: FontWeight.bold),
      labelLarge: const TextStyle(color: kBodyTextColorLight),
    ),
  );
}
