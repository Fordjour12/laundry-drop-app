import 'dart:js';

import 'package:flutter/material.dart';

class MyAppTypography {
  MyAppTypography._();

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
  static TextStyle body1 = TextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
    color: Theme.of(context as BuildContext).colorScheme.primary,
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
