// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:your_tracks/core/expense_repo.dart';
// import 'package:your_tracks/features/models/category.dart';

// part 'create_category_event.dart';
// part 'create_category_state.dart';

// class CreateCategoryBloc extends Bloc<CreateCategoryEvent, CreateCategoryState> {
//   final ExpenseRepository _expenseRepository;
//   CreateCategoryBloc(this._expenseRepository) : super(CreateCategoryInitial()) {

//     on<CreateCategory>((event, emit) async{
//       emit(CreateCategoryLoading());
//       try {
//         await _expenseRepository.createCategory(event.category);
//         emit(CreateCategorySuccess());
//       } catch (e) {
//         emit(CreateCategoryFailure());
//       }

//     });
//   }
// }
// create_category_bloc.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_category_event.dart';
import 'create_category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<AddCategory>((event, emit) async {
      emit(CategoryLoading());

      try {
        // Added the categories to the Firebase Firestore 
        await FirebaseFirestore.instance.collection('categories').add({
          'name': event.name,
          'icon': event.icon.codePoint,
          'expense': event.expense,
          // 'description': event.description,
          // 'date': event.date,
        });

        emit(CategorySuccess());
      } catch (e) {
        emit(const CategoryFailure('Failed to create category'));
      }
    });
  }
}
