import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_tracks/const/fonts/app_text.dart';

@RoutePage()
class EditExpensePage extends StatelessWidget {
const EditExpensePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return EditExpenseView();
  }
}
class EditExpenseView extends StatefulWidget {
  const EditExpenseView({super.key});

  @override
  State<EditExpenseView> createState() => _EditExpenseViewState();
}

class _EditExpenseViewState extends State<EditExpenseView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Edit Expense view'),
      ),
    );
  }
}