import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:soft_web/configs/assets.gen.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/enum/bottom_nav_items.dart';
import 'package:soft_web/core/enum/quick_actions.dart';
import 'package:soft_web/core/extensions/font_weight.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
import 'package:soft_web/features/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            Gap(32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                    text: "Quick Actions",
                    fontWeight: AppFontWeight.bold,
                    fontSize: 18.sp,
                  ),
                  Gap(15.h),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Wrap(
                      spacing: 6.w,
                      runSpacing: 6.h,
                      alignment: WrapAlignment.spaceBetween,
                      children: QuickActions.values.map(
                        (action) {
                          return Container(
                            height: 75.h,
                            width: 78.w,
                            decoration: BoxDecoration(
                              color: AppColors.grey28,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(action.icon()),
                                Gap(4.h),
                                NormalText(
                                  text: action.name(),
                                  fontSize: 14.sp,
                                  fontWeight: AppFontWeight.regular,
                                ),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Gap(42.h),
                  NormalText(
                    text: "News & Updates",
                    fontWeight: AppFontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ],
              ),
            ),
            Gap(16.h),
            SizedBox(
              height: 120.h,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Assets.icons.rectangle32
                      .image(height: 120.h, width: 285.w);
                },
                separatorBuilder: (_, __) => Gap(16.w),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 24.w,),
              ),
            ),
            Gap(24.h),

          ],
        ),
      ),
      floatingActionButton: Container(
        height: 52.h,
        width: 52.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [AppColors.orangePrimary, AppColors.yellowPrimary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(10.sp),
        child: Assets.icons.chatConversationCircle.svg(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: BottomNavItems.values.map((item) {
          return BottomNavigationBarItem(
              icon: SvgPicture.asset(
                item.icon(),
              ),
              label: item.name());
        }).toList(),
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.black,
        currentIndex: 0,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColors.grey69,
        unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
        selectedLabelStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
      ),
    );
  }
}
