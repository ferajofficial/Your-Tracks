
import 'package:your_tracks/features/models/category.dart';

abstract class ExpenseRepository {
  Future<void> createCategory(Category category);

  Future<List<Category>> getCategory();

  // Future<void> createExpense(Expense expense);

  // Future<List<Expense>> getExpenses();
}
