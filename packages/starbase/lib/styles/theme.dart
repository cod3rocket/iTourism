import 'package:flutter/material.dart';

class StarbaseTheme {
  static const primaryColor = Color.fromRGBO(23, 100, 163, 1);

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: primaryColor,
      brightness: Brightness.dark,
    );
  }
}
