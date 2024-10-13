import 'package:flutter/material.dart';
import 'package:soft_web/core/constants/colors.dart';

class AppColorScheme {
  static const ColorScheme colorScheme = ColorScheme(
    primary: AppColors.orangePrimary,
    secondary: AppColors.yellowPrimary,
    surface: AppColors.black,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: AppColors.black,
    onError: Colors.white,
    brightness: Brightness.dark,
  );
}
