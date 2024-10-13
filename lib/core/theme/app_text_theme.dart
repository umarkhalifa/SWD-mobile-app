import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soft_web/core/extensions/font_weight.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 44.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 40.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 36.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 16.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: AppFontWeight.bold.fontWeight(),
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: AppFontWeight.bold.fontWeight(),
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: AppFontWeight.bold.fontWeight(),
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 46.sp,
      fontWeight: AppFontWeight.medium.fontWeight(),
      color: Colors.white,
    ),
  );
}
