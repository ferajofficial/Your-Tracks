import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/presentation/home/widgets/counters.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: AppColors.selectionColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlack.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 4,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          15.heightBox,
          const AppText(
            text: 'Total Balance',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.kwhite,
          ),
          const AppText(
            text: '₹ 2,090,5.0',
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: AppColors.kwhite,
          ),
          25.heightBox,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Counters(
                counterText: 'Total Income',
                counterValue: '₹ 2,090,5.0',
                counterIconColor: AppColors.kIncIcon,
                counterIcon: Icons.arrow_drop_up,
              ),
              Counters(
                counterText: 'Total Expenses',
                counterValue: '₹ 2,090,5.0',
                counterIconColor: AppColors.kExpIcon,
                counterIcon: Icons.arrow_drop_down,
              ),
            ],
          ),
        ],
      ).p12(),
    );
  }
}
