// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:your_tracks/blocs/get_expense/expense_bloc_bloc.dart';
// import 'package:your_tracks/blocs/get_expense/expense_bloc_state.dart';
// import 'package:your_tracks/const/fonts/app_text.dart';
// import 'package:your_tracks/const/theme/app_colors.dart';
// import 'package:your_tracks/features/models/expense.dart';
// import 'package:your_tracks/presentation/home/widgets/header.dart';
// import 'package:your_tracks/presentation/home/widgets/status_card.dart';

// @RoutePage()
// class HomePage extends StatelessWidget {
//   const HomePage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const HomeView();
//   }
// }

// class HomeView extends StatefulWidget {
//   final expenses = List<Expense>;
//   const HomeView({
//     super.key,
//   });

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.kSecondaryBgColor,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Header(),
//               10.heightBox,
//               const StatusCard().h(200).p(6),
//               15.heightBox,
//               const AppText(
//                 text: 'Recent Expenses',
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//               15.heightBox,
//               Expanded(
//                 child: BlocBuilder<GetExpensesBloc, GetExpensesState>(
//                   builder: (context, state) {
//                     if (state is GetExpensesSuccess) {
//                       return ListView.separated(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.vertical,
//                         separatorBuilder: (context, index) => 12.heightBox,
//                         itemCount: 3,
//                         itemBuilder: (context, index) => Card(
//                           color: AppColors.selectionColor.withOpacity(0.1),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                               side: BorderSide(
//                                 color:
//                                     AppColors.selectionColor.withOpacity(0.5),
//                                 width: 0.5,
//                               )),
//                           elevation: 0,
//                           child: ListTile(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             leading: CircleAvatar(
//                               backgroundColor:
//                                   AppColors.selectionColor.withOpacity(0.5),
//                               child: const Icon(
//                                 Icons.shopping_cart,
//                                 color: AppColors.kwhite,
//                               ),
//                             ),
//                             title: const AppText(
//                               textAlign: TextAlign.left,
//                               text: '',
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             trailing: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const AppText(
//                                   textAlign: TextAlign.right,
//                                   text: '₹ 2,09',
//                                   color: AppColors.kExpIcon,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 AppText(
//                                   textAlign: TextAlign.right,
//                                   text: 'Date',
//                                   color: AppColors.kBlack.withOpacity(0.2),
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }
//                     return const Center(child: Text('No expenses found.'));
//                   },
//                 ),
//               )
//             ],
//           ),
//         ).p12());
//   }
// }

//*//**++++=========================+++++++++===============++++++++++==========++++++++= */
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:your_tracks/const/fonts/app_text.dart';
// import 'package:your_tracks/const/theme/app_colors.dart';
// import 'package:your_tracks/presentation/home/widgets/header.dart';
// import 'package:your_tracks/presentation/home/widgets/status_card.dart';

// @RoutePage()
// class HomePage extends StatelessWidget {
//   const HomePage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const HomeView();
//   }
// }

// class HomeView extends StatefulWidget {
//   const HomeView({
//     super.key,
//   });

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.kSecondaryBgColor,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//
//             15.heightBox,
//             const AppText(
//               text: 'Recent Expenses',
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//             15.heightBox,
//             Expanded(
//                 // child: BlocBuilder<GetExpensesBloc, GetExpensesState>(
//                 //   builder: (context, state) {
//                 //     if (state is GetExpensesLoading) {
//                 //       return const Center(child: CircularProgressIndicator());
//                 //     } else if (state is GetExpensesSuccess) {
//                 //       return
//                 child:

//               },
//             )
//                 //     } else if (state is GetExpensesFailure) {
//                 //       return Center(child: Text('Failed to load expenses.'));
//                 //     } else {
//                 //       return const Center(child: Text('No expenses found.'));
//                 //     }
//                 //   },
//                 // ),
//                 ),
//           ],
//         ),
//       ),
//     );
//   }

//   IconData getCategoryIcon(String categoryId) {
//     // Implement logic to get icon based on categoryId
//     // Return appropriate icon or a default icon if not found
//     return Icons.error;
//   }
// }
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_bloc.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_event.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_state.dart';
import 'package:your_tracks/const/fonts/app_text.dart';
import 'package:your_tracks/const/theme/app_colors.dart';
import 'package:your_tracks/core/firebase_expense_repo.dart';
import 'package:your_tracks/presentation/home/widgets/header.dart';
import 'package:your_tracks/presentation/home/widgets/status_card.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GetExpensesBloc getExpensesBloc =
      GetExpensesBloc(FirebaseExpenseRepo());
  @override
  void initState() {
    getExpensesBloc.add(GetExpenses());
    super.initState();
  }

  @override
  void dispose() {
    getExpensesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppHeader(),
            10.heightBox,
            const StatusCard().h(200).p(6),
            15.heightBox,
            const AppText(
              text: 'Recent Expenses',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            15.heightBox,
            Expanded(
              child: BlocBuilder<GetExpensesBloc, GetExpensesState>(
                bloc: getExpensesBloc,
                builder: (context, state) {
                  log('Current state in UI: $state');
                  if (state is GetExpensesLoading) {
                    return const Center(
                        // child: CircularProgressIndicator()
                        child: Text('Expenses loading...'));
                  } else if (state is GetExpensesSuccess) {
                    if (state.expenses.isEmpty) {
                      return const Center(child: Text('No expenses found'));
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) => 12.heightBox,
                      itemCount: state.expenses.length,
                      itemBuilder: (context, index) {
                        final expense = state.expenses[index];
                        log('Building item: $expense');
                        return Card(
                          color: AppColors.selectionColor.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: AppColors.selectionColor.withOpacity(0.5),
                              width: 0.5,
                            ),
                          ),
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
                            title: AppText(
                              textAlign: TextAlign.left,
                              text: expense.expenseName,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  textAlign: TextAlign.right,
                                  text: '₹ ${expense.amount}',
                                  color: AppColors.kExpIcon,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                AppText(
                                  textAlign: TextAlign.right,
                                  text: DateFormat('dd.MM.yyyy')
                                      .format(expense.date),
                                  color: AppColors.kBlack.withOpacity(0.2),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (state is GetExpensesFailure) {
                    return const Center(
                        child: Text('Failed to fetch expenses'));
                  }
                  return const Center(child: Text('No expenses found'));
                },
              ),
            )
          ],
        ).p12(),
      ),
    );
  }
}
