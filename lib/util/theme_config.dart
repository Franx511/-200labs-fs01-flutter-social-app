import 'package:flutter/material.dart';
import 'package:flutter_training_2/util/color_color.dart';

class ThemeConfig {
  //Colors for theme

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
        primary: ColorConfig.lightPrimary,
        secondary: ColorConfig.lightAccent,
        background: ColorConfig.lightBG),
    scaffoldBackgroundColor: ColorConfig.lightBG,
    textTheme: TextTheme(
      headline1: TextStyle(
          color: ColorConfig.darkBG,
          fontSize: 72.0,
          fontWeight: FontWeight.bold),
      headline6: TextStyle(
          color: ColorConfig.darkBG,
          fontSize: 36.0,
          fontStyle: FontStyle.italic),
      bodyText2: TextStyle(
          color: ColorConfig.darkBG, fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.light(
        primary: ColorConfig.lightPrimary,
        secondary: ColorConfig.lightAccent,
        background: ColorConfig.lightBG),
    scaffoldBackgroundColor: ColorConfig.darkBG,
    textTheme: TextTheme(
      headline1: TextStyle(
          color: ColorConfig.lightBG,
          fontSize: 72.0,
          fontWeight: FontWeight.bold),
      headline6: TextStyle(
          color: ColorConfig.lightBG,
          fontSize: 36.0,
          fontStyle: FontStyle.italic),
      bodyText2: TextStyle(
          color: ColorConfig.lightBG, fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
