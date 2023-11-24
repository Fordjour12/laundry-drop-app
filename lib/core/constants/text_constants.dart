import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';

class MyAppTypography {
  MyAppTypography._();

  // bd = body
  // hd = heading
  // bt = button
  // cbs = custom button style
  // b = bold, m = medium, bl = black, l = light, r = regular
  // eg: bd18m = body 18 medium
  //

  static const TextStyle bd18m = TextStyle(
    fontSize: 18,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle hd32b = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  static TextStyle bt18b = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.5,
    color: MyAppColorSwatch.secondaryColorDark,
  );

  static const TextStyle hd24b = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 1.25,
      color: MyAppColorSwatch.tertiaryColorDarkShade1);

  static ButtonStyle cbs(double width) {
    return ButtonStyle(
      minimumSize: MaterialStateProperty.all(
        Size(width, 53),
      ),
      backgroundColor: MaterialStateProperty.all(
        MyAppColorSwatch.tertiaryColorDarkShade1,
      ),
    );
  }

  static TextStyle bd10_(FontWeight weight, Color color) {
    return TextStyle(
      fontSize: 13,
      fontWeight: weight,
      color: color,
      height: 1.6,
    );
  }

  static const TextStyle h1 = TextStyle(
    fontSize: 96,
    letterSpacing: -1.5,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 60,
    letterSpacing: -0.5,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 48,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 34,
    letterSpacing: 0.25,
  );
  static const TextStyle h5 = TextStyle(
    fontSize: 24,
  );
  static const TextStyle h6 = TextStyle(
    fontSize: 20,
    letterSpacing: 0.15,
  );
  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16,
    letterSpacing: 0.15,
  );
  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14,
    letterSpacing: 0.1,
  );
  static TextStyle body1 = const TextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    letterSpacing: 1.25,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    letterSpacing: 0.4,
  );
  static const TextStyle overline = TextStyle(
    fontSize: 10,
    letterSpacing: 1.5,
  );
}
