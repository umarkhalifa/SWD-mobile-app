import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
class AppTextField extends StatelessWidget {
  final String title;
  final String hint;
  final bool? obscurePassword;
  final Widget? suffixIcon;

  const AppTextField(
      {super.key,
        required this.title,
        required this.hint,
        this.obscurePassword,
        this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: title,
          fontSize: 16,
          fontWeight: AppFontWeight.medium,
        ),
        Gap(8.h),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0XFF292929),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0XFF515151)),
              borderRadius: BorderRadius.circular(8.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.orangePrimary),
              borderRadius: BorderRadius.circular(8.r),
            ),
            hintText: hint,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
                color: AppColors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
          ),
        )
      ],
    );
  }
}
