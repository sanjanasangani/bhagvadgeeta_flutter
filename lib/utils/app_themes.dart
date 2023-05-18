import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueAccent,
      brightness: Brightness.light,
      primary: Colors.brown,
      //background: Colors.blue.shade900,
    ),
  );
  static ThemeData darkTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.dark,
      primary: Colors.brown,
      secondary: Colors.black,
      onPrimary: Colors.brown,
      onSecondary: Colors.brown
      //background: Colors.lightBlue,
    ),
  );
}
