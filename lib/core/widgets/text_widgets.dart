import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soft_web/core/extensions/font_weight.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final AppFontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  const TitleText(
      {super.key,
      required this.text,
      this.color,
      this.overflow,
      this.maxLines,
      this.decoration,
      this.fontWeight,
      this.fontSize,
      this.textAlign, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle??TextStyle(
        fontSize: fontSize ?? 32.sp,
        fontWeight: fontWeight == null
            ? AppFontWeight.medium.fontWeight()
            : fontWeight!.fontWeight(),
        decoration: decoration,
        color: color,
      ),

      textAlign: textAlign,
      maxLines: maxLines??3,
      overflow: overflow?? TextOverflow.ellipsis,
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final AppFontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  const NormalText(
      {super.key,
      required this.text,
      this.color,
      this.overflow,
      this.maxLines,
      this.decoration,
      this.fontWeight,
      this.fontSize,
      this.textAlign, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle??TextStyle(
          fontSize: fontSize ?? 16.sp,
          fontWeight: fontWeight == null
              ? AppFontWeight.medium.fontWeight()
              : fontWeight!.fontWeight(),
          decoration: decoration,
          color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow?? TextOverflow.ellipsis,
    );
  }
}
