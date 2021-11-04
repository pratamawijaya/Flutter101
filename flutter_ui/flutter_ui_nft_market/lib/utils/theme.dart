import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/utils/constants.dart';
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
      bodyText1: TextStyle(color: kBodyTextColorLight, fontSize: 16),
      bodyText2: TextStyle(color: kBodyTextColorLight, fontSize: 14),
      headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
      headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline5: TextStyle(fontSize: 24, letterSpacing: 0),
      headline6: TextStyle(fontSize: 20, letterSpacing: 0.15),
      subtitle1: TextStyle(fontSize: 16, letterSpacing: 0.15),
      subtitle2: TextStyle(fontSize: 14, letterSpacing: 0.1),
      button: TextStyle(color: kButtonColor, fontSize: 14),
      caption: TextStyle(fontSize: 12),
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
      bodyText1: TextStyle(color: kBodyTextColorDark, fontSize: 16),
      bodyText2: TextStyle(color: kBodyTextColorDark, fontSize: 14),
      headline1: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
      headline4: TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      headline5: TextStyle(fontSize: 24),
      headline6: TextStyle(fontSize: 20),
      subtitle1: TextStyle(fontSize: 16, letterSpacing: 0.15),
      subtitle2: TextStyle(fontSize: 14, letterSpacing: 0.1),
      button: TextStyle(color: kButtonDarkColor, fontSize: 14),
      caption: TextStyle(fontSize: 12),
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
