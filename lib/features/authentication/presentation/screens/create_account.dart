import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/routes/route_locations.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_button.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_gradient.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_text_field.dart';
import 'package:solar_icons/solar_icons.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool obscurePassword = true;

  void updatePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppGradient(
      appBar: AppBar(
        leadingWidth: 90.w,
        leading: GestureDetector(
          onTap:()=> Navigator.pop(context),
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
        actions: [
          const Center(
            child: GradientText(
              "Sign in Instead",
              gradient: LinearGradient(
                colors: [
                  AppColors.orangePrimary,
                  AppColors.yellowPrimary,
                ],
              ),
            ),
          ),
          Gap(22.w)
        ],
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            NormalText(
              text: "Create an account",
              fontSize: 29.sp,
              fontWeight: AppFontWeight.regular,
            ),
            Gap(25.h),
            Row(
              children: [
                const Expanded(
                  child: AppTextField(
                    title: "First name",
                    hint: "Enter first name",
                  ),
                ),
                Gap(10.w),
                const Expanded(
                  child: AppTextField(
                    title: "Last name",
                    hint: "Enter last name",
                  ),
                ),
              ],
            ),
            Gap(20.h),
            const AppTextField(
              title: "Phone number",
              hint: "Enter phone number",
            ),
            Gap(20.h),
            const AppTextField(
              title: "Email address",
              hint: "Enter email address",
            ),
            Gap(20.h),
            AppTextField(
              title: "Create Password",
              hint: "Enter password",
              obscurePassword: obscurePassword,
              suffixIcon: IconButton(
                onPressed: updatePassword,
                icon: Icon(
                  obscurePassword
                      ? SolarIconsOutline.eyeClosed
                      : SolarIconsOutline.eye,
                  color: AppColors.grey,
                ),
              ),
            ),
            Gap(20.h),
            const AppTextField(
              title: "Referral code (optional)",
              hint: "Enter referral code",
            ),
            Gap(32.h),
            AppButton(
              title: 'Next',
              onTap: () {
                Navigator.pushNamed(context, RouteLocations.verifyEmail);
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
                        color: AppColors.grey37,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(16.h),
            NormalText(
              text: "Account information",
              fontSize: 16.sp,
              color: AppColors.greyA4,
              fontWeight: AppFontWeight.regular,
            ),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: NormalText(
        text: text,
        fontSize: 16.sp,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
