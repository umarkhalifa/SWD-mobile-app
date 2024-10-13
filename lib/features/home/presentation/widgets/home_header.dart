import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:soft_web/configs/assets.gen.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/enum/card_actions.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
import 'package:soft_web/features/home/presentation/widgets/account_details_card.dart';
import 'package:soft_web/features/home/presentation/widgets/action_column.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 354.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24.r),
          bottomLeft: Radius.circular(24.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 44.h,
                  width: 44.w,
                  child: Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000.r),
                      side: const BorderSide(color: AppColors.greyA4),
                    ),
                    child:  Center(
                      child: Assets.icons.user01.svg(),
                    ),
                  ),
                ),
                NormalText(
                  text: "Welcome, Sam 👋🏾",
                  fontSize: 16.sp,
                  fontWeight: AppFontWeight.regular,
                  color: AppColors.black,
                ),
                SizedBox(
                  height: 44.h,
                  width: 44.w,
                  child: Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000.r),
                      side: const BorderSide(color: AppColors.greyA4),
                    ),
                    child: Center(
                      child: Assets.icons.notification.svg(),

                    ),
                  ),
                ),
              ],
            ),
            Gap(24.h),
            const AccountDetailsCard(),
            Gap(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ActionColumn(cardActions: CardActions.topUp),
                  SizedBox(
                    height: 17.h,
                    child: const VerticalDivider(
                      color: AppColors.grey,
                    ),
                  ),
                  const ActionColumn(cardActions: CardActions.transfer),
                  SizedBox(
                    height: 17.h,
                    child: const VerticalDivider(
                      color: AppColors.grey,
                    ),
                  ),
                  const ActionColumn(cardActions: CardActions.history)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
