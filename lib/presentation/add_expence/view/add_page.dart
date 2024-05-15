import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/presentation/add_expence/widgets/expense_form.dart';

@RoutePage()
class AddExpPage extends StatelessWidget {
  const AddExpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddExpenseView();
  }
}

class AddExpenseView extends StatefulWidget {
  const AddExpenseView({super.key});

  @override
  State<AddExpenseView> createState() => _AddExpenseViewState();
}

class _AddExpenseViewState extends State<AddExpenseView> {
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
          ).p8(),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppText(
                    text: 'Add Your Expenses',
                    fontSize: 20,
                    fontWeight: FontWeight.w500)
                .p(10),
            const ExpenseForm().p12(),
            ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:
                          AppColors.selectionColor.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const AppText(
                        text: 'SAVE',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kwhite))
                .p16()
                .h(80),
          ],
        )));
  }
}
