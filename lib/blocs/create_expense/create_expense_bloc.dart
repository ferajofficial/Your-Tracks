import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:your_tracks/blocs/create_expense/create_expense_event.dart';
import 'package:your_tracks/core/firebase_expense_repo.dart';

part 'create_expense_state.dart';

class CreateExpenseBloc extends Bloc<CreateExpenseEvent, CreateExpenseState> {
  FirebaseExpenseRepo expenseRepository = FirebaseExpenseRepo();

  CreateExpenseBloc() : super(CreateExpenseInitial()) {
    on<CreateExpense>((event, emit) async {
      emit(CreateExpenseLoading());
      try {
        await expenseRepository.createExpense(event.expense);
        emit(CreateExpenseSuccess());
      } catch (e) {
        emit(CreateExpenseFailure());
      }
    });
  }
}
