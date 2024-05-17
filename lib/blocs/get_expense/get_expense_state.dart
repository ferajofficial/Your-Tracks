
import 'package:your_tracks/features/models/expense.dart';

// Example state classes
abstract class GetExpensesState {}

class GetExpensesInitial extends GetExpensesState {}

class GetExpensesLoading extends GetExpensesState {}

class GetExpensesSuccess extends GetExpensesState {
  final List<Expense> expenses;
  
  GetExpensesSuccess(this.expenses);
  
}

class GetExpensesFailure extends GetExpensesState {}
