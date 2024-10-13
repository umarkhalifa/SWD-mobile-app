import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:soft_web/core/constants/colors.dart';
import 'package:soft_web/core/enum/card_actions.dart';
import 'package:soft_web/core/widgets/text_widgets.dart';
class ActionColumn extends StatelessWidget {
  final CardActions cardActions;

  const ActionColumn({super.key, required this.cardActions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(cardActions.icon()),
        Gap(8.h),
        NormalText(
          text: cardActions.name(),
          textStyle: TextStyle(
              color: AppColors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
