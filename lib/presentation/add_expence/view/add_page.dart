import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

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
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Add Expense view'),
      ),
    );
  }
}
