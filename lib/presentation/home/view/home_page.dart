import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/presentation/home/widgets/header.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Header(),
          10.heightBox,
          // const StatusCard().h(200).p(6),
          const SizedBox(
            height: 200,
            // child: StatusCard(),
          ),
          15.heightBox,
          const AppText(
            text: 'Recent Expenses',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          15.heightBox,
          // Expanded(
          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       itemBuilder: (context, index) => Container(
          //             height: 100,
          //             width: 100,
          //             color: Colors.red,
          //           ),
          //       itemCount: 20),
          // ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Card(
                      // color: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: AppColors.selectionColor.withOpacity(0.5),
                            width: 1,
                          )),
                      elevation: 0,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        leading: CircleAvatar(
                          backgroundColor:
                              AppColors.selectionColor.withOpacity(0.5),
                          child: const Icon(
                            Icons.shopping_cart,
                            color: AppColors.kwhite,
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
                    ),
                separatorBuilder: (context, index) => 12.heightBox,
                itemCount: 16),
          )
        ],
      ),
    ).p12());
  }
}
