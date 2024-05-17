
import 'package:your_tracks/core/entities/expense_entities.dart';

class Expense {
  String expenseName;
  String expenseId;
  DateTime date;
  int amount;
  String categoryId;

  Expense({
    required this.expenseName,
    required this.expenseId,
    required this.date,
    required this.amount,
    required this.categoryId,
  });

  static final empty = Expense(
    expenseName: '',
    expenseId: '',
    date: DateTime.now(),
    amount: 0,
    categoryId: '',
  );

  ExpenseEntity toEntity() {
    return ExpenseEntity(
      expenseName: expenseName,
      expenseId: expenseId,
      date: date,
      amount: amount,
      categoryId: categoryId,
    );
  }

  static Expense fromEntity(ExpenseEntity entity) {
    return Expense(
      expenseName: entity.expenseName ?? '',
      expenseId: entity.expenseId ?? '',
      date: entity.date ?? DateTime.now(),
      amount: entity.amount ?? 0,
      categoryId: entity.categoryId ?? '',
    );
  }
}
