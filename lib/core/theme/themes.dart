import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';

class MyAppThemeMode {
  static const String light = "light";
  static const String dark = "dark";
  static const String system = "system";

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "FuturaPT",
    colorScheme: const ColorScheme.light(
      background: MyAppColorSwatch.secondaryColor,
      brightness: Brightness.light,
      primary: MyAppColorSwatch.primaryColor,
      secondary: MyAppColorSwatch.secondaryColor,
      tertiary: MyAppColorSwatch.tertiaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: "FuturaPT",
    colorScheme: const ColorScheme.dark(
      background: MyAppColorSwatch.primaryColorDark,
      brightness: Brightness.dark,
      primary: MyAppColorSwatch.primaryColorDark,
      secondary: MyAppColorSwatch.secondaryColorDark,
      tertiary: MyAppColorSwatch.tertiaryColorDark,
    ),
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
