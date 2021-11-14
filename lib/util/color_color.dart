import 'package:flutter/material.dart';

class ColorConfig {
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = const Color(0xff1f1f1f);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.lightBlue;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.grey;
  static Color badgeColor = Colors.red;

  static List<Color> offline = <Color>[
    const Color(0xffff8960),
    const Color(0xffff62A5)
  ];
  static Color online = Colors.green;
  static Color onhold = Colors.yellow;
}
