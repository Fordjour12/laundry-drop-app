import 'package:flutter/material.dart';

class MyAppThemeMode {
  static const String light = "light";
  static const String dark = "dark";
  static const String system = "system";

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primarySwatch: Colors.blue,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primarySwatch: Colors.yellow,
  );

// will perform this action latter down the pipeline
  static ThemeMode getThemeMode(String themeMode) {
    switch (themeMode) {
      case light:
        return ThemeMode.light;
      case dark:
        return ThemeMode.dark;
      case system:
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }
}
