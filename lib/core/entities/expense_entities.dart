// import 'package:cloud_firestore/cloud_firestore.dart';

// class ExpenseEntity {
//   String expenseName;
//   String expenseId;
//   DateTime date;
//   int amount;
//   String categoryId;

//   ExpenseEntity({
//     required this.expenseName,
//     required this.expenseId,
//     required this.date,
//     required this.amount,
//     required this.categoryId,
//   });

//   Map<String, Object?> toDocument() {
//     return {
//       'expenseName': expenseName,
//       'expenseId': expenseId,
//       'date': date,
//       'amount': amount,
//       'categoryId': categoryId,
//     };
//   }

//   static ExpenseEntity fromDocument(Map<String, dynamic> doc) {
//     return ExpenseEntity(
//       expenseName: doc['expenseName'],
//       expenseId: doc['expenseId'],
//       date: (doc['date'] as Timestamp).toDate(),
//       amount: doc['amount'],
//       categoryId: doc['categoryId'],
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';

class ExpenseEntity {
  String? expenseName;
  String? expenseId;
  DateTime? date;
  int? amount;
  String? categoryId;

  ExpenseEntity({
    this.expenseName,
    this.expenseId,
    this.date,
    this.amount,
    this.categoryId,
  });

  Map<String, Object?> toDocument() {
    return {
      'expenseName': expenseName,
      'expenseId': expenseId,
      'date': date,
      'amount': amount,
      'categoryId': categoryId,
    };
  }

  static ExpenseEntity fromDocument(Map<String, dynamic> doc) {
    return ExpenseEntity(
      expenseName: doc['expenseName'] as String?,
      expenseId: doc['expenseId'] as String?,
      date: (doc['date'] as Timestamp?)?.toDate(),
      amount: (doc['amount'] as int?) ?? 0,
      categoryId: doc['categoryId'] as String?,
    );
  }
}
