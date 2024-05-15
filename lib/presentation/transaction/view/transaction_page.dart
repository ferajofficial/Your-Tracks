import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';

@RoutePage()
class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TransactionPageView();
  }
}

class TransactionPageView extends StatefulWidget {
  const TransactionPageView({super.key});

  @override
  State<TransactionPageView> createState() => _TransactionPageViewState();
}

class _TransactionPageViewState extends State<TransactionPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundColor: AppColors.selectionColor.withOpacity(0.5),
            child: IconButton(
              onPressed: () {
                context.maybePop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.kwhite,
              ),
            ),
          ).pOnly(left: 15),
          title: const AppText(text: 'All Your Expenses', fontSize: 20),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AppText(text: 'Filter by: '),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Income'),
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Expense'),
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const AppText(text: 'Date'),
                    onSelected: (bool value) {},
                  )
                ],
              ),
              Expanded(
                child: ListView.separated(
                        itemBuilder: (context, index) => Card(
                              elevation: 0,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: AppColors.selectionColor
                                        .withOpacity(0.5),
                                    width: 0.5,
                                  ),
                                ),
                                // tileColor: Colors.grey.shade300,
                                title: const Text('Title'),
                              ),
                            ),
                        separatorBuilder: (context, index) => 5.heightBox,
                        itemCount: 20)
                    .p12(),
              ),
            ],
          ),
        ));
  }
}
