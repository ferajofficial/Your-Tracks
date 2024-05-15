import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/presentation/home/widgets/header.dart';
import 'package:your_tracks/presentation/home/widgets/status_card.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          10.heightBox,
          const StatusCard().h(200).p(6),
          15.heightBox,
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const AppText(
              text: 'Recent Expenses',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            15.heightBox,
            ListView.separated(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                              color: AppColors.selectionColor.withOpacity(0.5),
                              width: 0.9)),
                      leading: CircleAvatar(
                        backgroundColor:
                            AppColors.selectionColor.withOpacity(0.5),
                        // radius: 25,
                        child: const Icon(
                          Icons.shopping_cart,
                          color: AppColors.kwhite,
                          // size: 30,
                        ),
                      ),
                      title: const AppText(
                        textAlign: TextAlign.left,
                        text: 'Shopping',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AppText(
                            textAlign: TextAlign.right,
                            text: '₹ 2,09',
                            color: AppColors.kExpIcon,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            textAlign: TextAlign.right,
                            text: 'Date',
                            color: AppColors.kBlack.withOpacity(0.2),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => 12.heightBox,
                itemCount: 5),
          ])
        ],
      ),
    ).p12());
  }
}
