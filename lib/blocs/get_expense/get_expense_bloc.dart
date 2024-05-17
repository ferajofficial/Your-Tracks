// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:your_tracks/blocs/get_expense/get_expense_event.dart';
// import 'package:your_tracks/blocs/get_expense/get_expense_state.dart';
// import 'package:your_tracks/core/firebase_expense_repo.dart';
// import 'package:your_tracks/features/models/expense.dart';

// class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
//   final FirebaseExpenseRepo expenseRepository;

//   GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
//
//   }
// }
import 'package:bloc/bloc.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_event.dart';
import 'package:your_tracks/blocs/get_expense/get_expense_state.dart';
import 'package:your_tracks/core/firebase_expense_repo.dart';
import 'package:your_tracks/features/models/expense.dart';

class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
  FirebaseExpenseRepo expenseRepository;

  GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
    on<GetExpenses>((event, emit) async {
      emit(GetExpensesLoading());
      try {
        List<Expense> expenses = await expenseRepository.getExpenses();
        emit(GetExpensesSuccess(expenses));
      } catch (e) {
        emit(GetExpensesFailure());
      }
    });
  }
}
// class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
//   final FirebaseExpenseRepo expenseRepository;
//   StreamSubscription<List<Expense>>? _expensesSubscription;

//   GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
//     on<GetExpenses>((event, emit) async {
//       log('GetExpenses event received');
//       emit(GetExpensesLoading());
//       try {
//         final expensesStream = expenseRepository.getExpenses();
//         _expensesSubscription?.cancel();
//         _expensesSubscription = expensesStream.listen(
//           (expenses) {
//             log('Expenses received: $expenses');
//             emit(GetExpensesSuccess(expenses));
//           },
//           onError: (error) {
//             log('Error fetching expenses: $error');
//             emit(GetExpensesFailure());
//           },
//         );
//       } catch (e) {
//         log('Exception caught: $e');
//         emit(GetExpensesFailure());
//       }
//     });
//   }

//   @override
//   Future<void> close() {
//     _expensesSubscription?.cancel();
//     return super.close();
//   }
// }
