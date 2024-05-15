import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';

class Counters extends StatelessWidget {
  final String counterText;
  final String counterValue;
  final Color counterIconColor;
  const Counters({
    super.key, required this.counterText, required this.counterValue, required this.counterIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: AppColors.kwhite.withOpacity(0.3),
          child:  Icon(
            Icons.arrow_drop_down_rounded,
            color: counterIconColor,
            size: 30,
          ),
        ),
        5.widthBox,
         Column(
          children: [
            AppText(
              text: counterText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.kwhite,
            ),
            AppText(
              text: counterValue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.kwhite,
            ),
          ],
        ),
      ],
    );
  }
}
