import 'package:flutter/material.dart';
import 'package:soft_web/configs/fonts.gen.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/theme/app_color_scheme.dart';
import 'package:soft_web/core/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    colorScheme: AppColorScheme.colorScheme,
    textTheme: AppTextTheme.lightTextTheme,
    brightness: Brightness.dark,
    useMaterial3: false,
    fontFamily: FontFamily.generalSans,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,

      iconTheme: IconThemeData(color: Colors.white)
    ),
  );
}
