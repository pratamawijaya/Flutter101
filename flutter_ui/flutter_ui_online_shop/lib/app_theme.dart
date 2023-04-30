import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xFF18A930);
const kPrimaryLightColor = Color(0xFF60B86E);
const kSecondaryLightColor = Color(0xFF9146E6);
const kSecondaryDarkColor = Color(0xFF350C67);
const kAccentLightColor = Color(0xFFE05B36);
const kAccentDarkColor = Color(0xFF4F1504);
const kBackgroundDarkColor = Color(0xFF3A3A3A);
const kSurfaceDarkColor = Color(0xFF222225);
const kScaffoldColor = Color(0xFFFFFFFF);

// Icon Colors
const kAccentIconLightColor = Color(0xFFECEFF5);
const kAccentIconDarkColor = Color(0xFF303030);
const kPrimaryIconLightColor = Color(0xFFECEFF5);
const kPrimaryIconDarkColor = Color(0xFF232323);

// Text Colors
const kBodyTextColorLight = Color(0xFF101112);
const kBodyTextColorDark = Color(0xFF7C7C7C);
const kTitleTextLightColor = Color(0xFF101112);
const kTitleTextDarkColor = Colors.white;

const kShadowColor = Color(0xFF364564);

// button
const kButtonColor = Color(0xFFE7CBDD);
const kButtonDarkColor = Color(0xFFE7CBDD);

AppBarTheme appBarTheme = const AppBarTheme(color: Colors.green, elevation: 0);

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
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      headlineLarge: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 96,
          letterSpacing: -1.5,
          fontWeight: FontWeight.w300),
      headlineMedium: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 60,
          letterSpacing: -0.5,
          fontWeight: FontWeight.w300),
      headlineSmall: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 24,
          letterSpacing: 0,
          fontWeight: FontWeight.w400),
      titleLarge: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 14,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w500),
      titleSmall: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 12,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          color: kBodyTextColorLight,
          fontSize: 12,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400),
    ),
  );
}
