import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/routes/route_locations.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_button.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_gradient.dart';
import 'package:soft_web/features/authentication/presentation/widgets/app_text_field.dart';
import 'package:solar_icons/solar_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscurePassword = true;

  void updatePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppGradient(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NormalText(
                text: "Welcome back 👋🏾",
                fontSize: 36.sp,
                fontWeight: AppFontWeight.regular,
              ),
              Gap(72.h),
              const AppTextField(
                title: "Email address",
                hint: "Enter email address",
              ),
              Gap(24.h),
              AppTextField(
                title: "Password",
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
              Gap(8.h),
              Align(
                alignment: Alignment.centerLeft,
                child: NormalText(
                  text: "Forgot password?",
                  fontWeight: AppFontWeight.medium,
                  color: AppColors.grey,
                  fontSize: 14.sp,
                ),
              ),
              Gap(32.h),
              AppButton(
                  title: 'Sign in',
                  onTap: () {
                    Navigator.pushNamed(context, RouteLocations.home);
                  }),
              Gap(8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalText(
                    text: "I don't have an account,",
                    fontSize: 14.sp,
                    color: AppColors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteLocations.createAccount);
                    },
                    child: NormalText(
                      text: " Create account",
                      fontSize: 14.sp,
                      color: AppColors.orangePrimary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
