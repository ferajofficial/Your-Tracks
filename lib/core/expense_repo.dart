
import 'package:your_tracks/features/models/expense.dart';

abstract class ExpenseRepository {

  Future<void> createExpense(Expense expense);

  Future<List<Expense>> getExpenses();
}
