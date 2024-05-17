import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.selectionColor.withOpacity(0.5),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'Welcome',
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            AppText(
              textAlign: TextAlign.left,
              text: 'Jhon Wick',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ).p(5)
      ],
    );
  }
}
