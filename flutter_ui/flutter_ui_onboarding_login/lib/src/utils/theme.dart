import 'package:flutter/material.dart';
import 'package:flutter_ui_onboarding_login/src/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

// light theme
ThemeData myThemeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorLight),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
    ),
  );
}

// dark theme
ThemeData myDarkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    colorScheme: ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorDark),
      bodyText2: TextStyle(color: kBodyTextColorDark),
      headline4: TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      headline1: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);

final ButtonStyle primaryButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

final ButtonStyle primaryLightButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryLightColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
