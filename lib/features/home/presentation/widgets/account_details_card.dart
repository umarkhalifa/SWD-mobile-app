import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
class AccountDetailsCard extends StatelessWidget {
  const AccountDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
        gradient: const LinearGradient(
          colors: [AppColors.orangePrimary, AppColors.yellowPrimary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(
                text: "WALLET BALANCE",
                fontSize: 10.sp,
              ),
              Row(
                children: [
                  NormalText(
                    text: "NGN 50,000",
                    fontSize: 16.sp,
                    fontWeight: AppFontWeight.bold,
                  ),
                  Gap(8.w),
                  Icon(
                    LucideIcons.eyeOff,
                    color: Colors.white,
                    size: 15.sp,
                  )
                ],
              ),
              Gap(8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    NormalText(
                      text: "Cashback",
                      fontSize: 12.sp,
                      color: AppColors.grey28,
                    ),
                    Gap(4.w),
                    NormalText(
                      text: "N341.20",
                      fontSize: 10.sp,
                      fontWeight: AppFontWeight.bold,
                      color: AppColors.orangePrimary,
                    )
                  ],
                ),
              )
            ],
          ),
          VerticalDivider(
            color: AppColors.orangeDO.withOpacity(0.6),
          ),
          Container(
            width: 137.w,
            height: 69.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
                color: Colors.white.withOpacity(0.2)),
            padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 9.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NormalText(
                  text: "MONIEPOINT",
                  fontSize: 10.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NormalText(
                      text: "8192017482",
                      fontSize: 16.sp,
                      fontWeight: AppFontWeight.bold,
                    ),
                    const Icon(
                      LucideIcons.copy,
                      size: 14,
                    )
                  ],
                ),
                NormalText(
                  text: "Deposit Fee: N20",
                  fontSize: 10.sp,
                  decoration: TextDecoration.underline,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
