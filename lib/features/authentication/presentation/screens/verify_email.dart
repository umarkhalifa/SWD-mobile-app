import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:soft_web/configs/fonts.gen.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/routes/route_locations.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_button.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_gradient.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradient(
      appBar: AppBar(
        leadingWidth: 90.w,
        leading: GestureDetector(
          onTap: ()=>Navigator.pop(context),
          child: Row(
            children: [
              const Icon(LucideIcons.chevronLeft),
              Gap(8.w),
              NormalText(
                text: "Back",
                fontSize: 16.sp,
                color: AppColors.grey,
              )
            ],
          ),
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NormalText(
              text: "Verify your email",
              fontWeight: AppFontWeight.regular,
              fontSize: 29.sp,
            ),
            Gap(16.h),
            RichText(
              text: TextSpan(
                text: "Please enter the OTP sent to\n",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey,
                    fontFamily: FontFamily.generalSans,
                    height: 1.5),
                children: const [
                  TextSpan(
                    text: "tolu.ab19@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Gap(32.h),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: OtpTextField(
                numberOfFields: 6,
                borderColor: const Color(0xFF515151),
                showFieldAsBox: true,
                filled: true,
                fillColor: const Color(0XFF292929),
                fieldHeight: 52.h,
                fieldWidth: 46.w,
                borderRadius: BorderRadius.circular(8.r),
                borderWidth: 0.4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            Gap(323.h),
            AppButton(
              title: 'Verify email',
              onTap: () {
                Navigator.pushNamed(context, RouteLocations.home);
              },
            ),
            Gap(32.h),
            Hero(
              tag: 'email',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  ),
                  Gap(8.w),
                  Expanded(
                    child: Container(
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(16.h),
            Center(
              child: NormalText(
                text: "Account information",
                fontSize: 16.sp,
                color: AppColors.greyA4,
                fontWeight: AppFontWeight.regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
