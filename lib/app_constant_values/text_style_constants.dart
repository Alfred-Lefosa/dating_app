import 'package:flutter/material.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

class AppFonts {
  static const TextStyle titleRedFont = TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.faintedRed,
      letterSpacing: 5);

  static const TextStyle titleBlackFont = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 5);
  static const TextStyle titleWhiteFont = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 5);

  static const TextStyle italicBlackFont = TextStyle(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
      color: Colors.black,
      letterSpacing: 0);
}
