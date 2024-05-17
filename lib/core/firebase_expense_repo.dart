// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:your_tracks/core/entities/expense_entities.dart';

// import 'package:your_tracks/features/models/expense.dart';

// class FirebaseExpenseRepo  {
//   final expenseCollection = FirebaseFirestore.instance.collection('expenses');

//   Future<void> createExpense(Expense expense) async {
//     try {
//       await expenseCollection
//           .doc(expense.expenseId)
//           .set(expense.toEntity().toDocument());
//     } catch (e) {
//       log(e.toString());
//       rethrow;
//     }
//   }

//   // Future<List<Expense>> getExpenses() async {
//   //   try {
//   //     log('message: getExpenses');
//   //     final result = await expenseCollection.get().then((value) => value.docs
//   //         .map((e) => Expense.fromEntity(ExpenseEntity.fromDocument(e.data())))
//   //         .toList());
//   //     log('result:$result');
//   //     return result;
//   //   } catch (e) {
//   //     log(e.toString());
//   //     rethrow;
//   //   }
//   // }
//   Future<List<Expense>> getExpenses() async {
//     try {
//       log('Fetching expenses from Firestore');
//       final querySnapshot = await expenseCollection.get();
//       log('Fetched documents: ${querySnapshot.docs.length}');
//       final result = querySnapshot.docs.map((doc) {
//         final data = doc.data() as Map<String, dynamic>;
//         log('Document data: $data');
//         return Expense.fromEntity(ExpenseEntity.fromDocument(data));
//       }).toList();
//       log('Mapped expenses: $result');
//       return result;
//     } catch (e) {
//       log('Error fetching expenses: $e');
//       rethrow;
//     }
//   }

import 'dart:developer';

// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:your_tracks/core/entities/expense_entities.dart';
import 'package:your_tracks/features/models/expense.dart';

class FirebaseExpenseRepo {
  final expenseCollection = FirebaseFirestore.instance.collection('expenses');

  Future<void> createExpense(Expense expense) async {
    try {
      await expenseCollection
          .doc(expense.expenseId)
          .set(expense.toEntity().toDocument());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<Expense>> getExpenses() async {
    try {
      return await expenseCollection.get().then((value) => value.docs
          .map((e) => Expense.fromEntity(ExpenseEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
  // Stream<List<Expense>> getExpenses() {
  //   return expenseCollection.snapshots().map((snapshot) {
  //     log('Snapshot received with ${snapshot.docs.length} documents');
  //     return snapshot.docs.map((doc) {
  //       final data = doc.data();
  //       log('Document data: $data');
  //       return Expense.fromEntity(ExpenseEntity.fromDocument(data));
  //     }).toList();
  //   });
  // }
}
