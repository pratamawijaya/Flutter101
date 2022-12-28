import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';
import 'package:google_fonts/google_fonts.dart';

AppBarTheme appBarTheme = const AppBarTheme(color: kPrimaryColor, elevation: 0);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kScaffoldColor,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    appBarTheme: appBarTheme,
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      headline1: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 96,
          letterSpacing: -1.5,
          fontWeight: FontWeight.w300),
      headline2: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 60,
          letterSpacing: -0.5,
          fontWeight: FontWeight.w300),
      headline3: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 48,
          letterSpacing: 0,
          fontWeight: FontWeight.w400),
      headline4: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 34,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      headline5: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 24,
          letterSpacing: 0,
          fontWeight: FontWeight.w400),
      headline6: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500),
      subtitle1: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400),
      subtitle2: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 14,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 16,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w400),
      bodyText2: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      button: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 14,
          letterSpacing: 1.25,
          fontWeight: FontWeight.w500),
      caption: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 12,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400),
    ),
  );
}
