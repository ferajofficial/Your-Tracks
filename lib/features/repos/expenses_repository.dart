// // import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:your_tracks/features/models/expense.dart';

// class ExpenseRepository {
//   final FirebaseFirestore firestore;

//   ExpenseRepository({required this.firestore});

//   Future<List<Expense>> getExpenses() async {
//     try {
//       final querySnapshot = await firestore.collection('expenses').get();
//       return querySnapshot.docs
//           .map((doc) => Expense.fromFirestore(doc))
//           .toList();
//     } catch (e) {
//       throw Exception('Error fetching expenses: $e');
//     }
//   }
// }
