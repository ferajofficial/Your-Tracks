// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uuid/uuid.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:your_tracks/blocs/create_expense/create_expense_bloc.dart';
// import 'package:your_tracks/blocs/create_expense/create_expense_event.dart';
// import 'package:your_tracks/const/fonts/app_text.dart';
// import 'package:your_tracks/const/theme/app_colors.dart';
// import 'package:your_tracks/features/models/expense.dart';
// import 'package:your_tracks/presentation/add_expence/widgets/expense_form.dart';
// import 'package:your_tracks/shared/global_button.dart';

// @RoutePage()
// class AddExpPage extends StatelessWidget {
//   const AddExpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const AddExpenseView();
//   }
// }

// class AddExpenseView extends StatefulWidget {
//   const AddExpenseView({super.key});

//   @override
//   State<AddExpenseView> createState() => _AddExpenseViewState();
// }

// class _AddExpenseViewState extends State<AddExpenseView> {
//   TextEditingController date = TextEditingController();
//   TextEditingController name = TextEditingController();
//   TextEditingController expenseC = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   late Expense expense;

//   @override
//   void initState() {
//     expense = Expense.empty;
//     expense.expenseId = const Uuid().v1();
//     date.text = DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
//     // date.text = DateTime.now().toString();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.kSecondaryBgColor,
//       appBar: AppBar(
//         backgroundColor: AppColors.kSecondaryBgColor,
//         leading: CircleAvatar(
//           backgroundColor: AppColors.selectionColor.withOpacity(0.5),
//           child: IconButton(
//             onPressed: () {
//               context.maybePop();
//             },
//             icon: const Icon(
//               Icons.arrow_back,
//               color: AppColors.kwhite,
//             ),
//           ),
//         ).p8(),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const AppText(
//                 text: 'Add Your Expenses',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ).p(10),
//               ExpenseForm(
//                 dateController: date,
//                 nameController: name,
//                 expenseController: expenseC,
//                 formKey: formKey,
//               ).p12(),
//               20.heightBox,
//               BlocConsumer<CreateExpenseBloc, CreateExpenseState>(
//                 listener: (context, state) {
//                   if (state is CreateExpenseSuccess) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text('Expense added successfully!'),
//                       ),
//                     );
//                     context.maybePop();
//                   } else if (state is CreateExpenseFailure) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text('something went wrong'),
//                       ),
//                     );
//                   }
//                 },
//                 builder: (context, state) {
//                   if (state is CreateExpenseLoading) {
//                     return const CircularProgressIndicator().centered();
//                   }
//                   return GlobalButton(
//                     buttonText: 'Save',
//                     onPressed: () {
//                       if (formKey.currentState!.validate()) {
//                         expense = Expense(
//                           expenseName: name.text,
//                           expenseId: expense.expenseId,
//                           date: DateFormat('dd.MM.yyyy').parse(date.text),
//                           amount: int.parse(expenseC.text),
//                         );

//                         context.read<CreateExpenseBloc>().add(
//                               CreateExpense(expense),
//                             );
//                       }
//                     },
//                   ).p16().h(80);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/blocs/create_expense/create_expense_bloc.dart';
import 'package:your_tracks/blocs/create_expense/create_expense_event.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_bloc.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_event.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/core/firebase_expense_repo.dart';
import 'package:your_tracks/features/models/expense.dart';
import 'package:your_tracks/presentation/add_expence/widgets/expense_form.dart';
import 'package:your_tracks/shared/global_button.dart';

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
  TextEditingController date = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController expenseC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  CategoryList? selectedCategory;
  late Expense expense;

  @override
  void initState() {
    super.initState();
    expense = Expense.empty;
    expense.expenseId = const Uuid().v1();
    date.text = DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetExpensesBloc(FirebaseExpenseRepo()),
      child: Scaffold(
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
                  dateController: date,
                  nameController: name,
                  expenseController: expenseC,
                  formKey: formKey,
                ).p12(),
                20.heightBox,
                BlocConsumer<CreateExpenseBloc, CreateExpenseState>(
                  listener: (context1, state) {
                    if (state is CreateExpenseSuccess) {
                      // Dispatch CreateExpenseSuccess event to GetExpensesBloc
                      // context.read<GetExpensesBloc>().add(CreateExpenseSuccess());
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Expense added successfully!'),
                        ),
                      );
                      context.maybePop();
                      context.read<GetExpensesBloc>().add(GetExpenses());
                      // BlocProvider.of<GetExpensesBloc>(context)
                          // .add(GetExpenses());
                      formKey.currentState!.reset();
                      date.text = DateFormat('dd.MM.yyyy')
                          .format(DateTime.now().toLocal());
                      name.clear();
                      expenseC.clear();
                    } else if (state is CreateExpenseFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Something went wrong'),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is CreateExpenseLoading) {
                      return const CircularProgressIndicator().centered();
                    }
                    return GlobalButton(
                      buttonText: 'Save',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          expense = Expense(
                            expenseName: name.text,
                            expenseId: expense.expenseId,
                            date: DateFormat('dd.MM.yyyy').parse(date.text),
                            amount: int.parse(expenseC.text),
                            categoryId: selectedCategory != null
                                ? selectedCategory!.id
                                : '',
                          );
                          context.read<CreateExpenseBloc>().add(
                                CreateExpense(expense),
                              );
                        }
                      },
                    ).p12().h(80);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
