import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // Couleurs principales
  static const Color primary = Color.fromARGB(255, 40, 56, 138);
  static const Color secondary = Color.fromARGB(255, 45, 46, 53);

  // Gradient
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );
}