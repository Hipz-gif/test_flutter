import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

final aliceGreen = '#29b363'.toColor();
final aliceBlue = '#2c7edb'.toColor();
final greyText = '#b4b4b4'.toColor();
final greyContent = '#6c6c6c'.toColor();
final greyAuthor = '#aeaeae'.toColor();
final black = '#000000'.toColor();

