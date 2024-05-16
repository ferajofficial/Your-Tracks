import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/blocs/category_bloc/create_category_bloc.dart';
import 'package:your_tracks/blocs/category_bloc/create_category_event.dart';
import 'package:your_tracks/blocs/category_bloc/create_category_state.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/presentation/add_expence/widgets/expense_form.dart';
import 'package:your_tracks/shared/global_button.dart';

@RoutePage()
class AddExpPage extends StatelessWidget {
  const AddExpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(),
      child: const AddExpenseView(),
    );
  }
}

class AddExpenseView extends StatefulWidget {
  const AddExpenseView({super.key});

  @override
  State<AddExpenseView> createState() => _AddExpenseViewState();
}

class _AddExpenseViewState extends State<AddExpenseView> {
  TextEditingController date = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController expense = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.kSecondaryBgColor,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppText(
                text: 'Add Your Expenses',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ).p(10),
               ExpenseForm(
                dateController:date ,
                 nameController: name,
                  expenseController: expense).p12(),
              20.heightBox,
              BlocConsumer<CategoryBloc, CategoryState>(
                listener: (context, state) {
                  if (state is CategorySuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Expense added successfully!'),
                      ),
                    );
                    context.maybePop();
                  } else if (state is CategoryFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('something went wrong'),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is CategoryLoading) {
                    return const CircularProgressIndicator().centered();
                  }
                  return GlobalButton(
                    buttonText: 'Save',
                    onPressed: () {
                      context.read<CategoryBloc>().add(AddCategory(
                            name: name.text,
                            icon: Icons.category,
                            expense: expense.text,
                            // date : date.text,
                            // date: DateTime.now(),
                          ));
                    },
                  ).p16().h(80);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
