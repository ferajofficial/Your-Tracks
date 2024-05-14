import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

@RoutePage()
class ExpenseSummaryPage extends StatelessWidget {
  const ExpenseSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpenseSummaryView();
  }
}

class ExpenseSummaryView extends StatefulWidget {
  const ExpenseSummaryView({super.key});

  @override
  State<ExpenseSummaryView> createState() => _ExpenseSummaryViewState();
}

class _ExpenseSummaryViewState extends State<ExpenseSummaryView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Expense Summary view'),
      ),
    );
  }
}
