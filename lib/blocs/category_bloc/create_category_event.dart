// part of 'create_category_bloc.dart';

// sealed class CreateCategoryEvent extends Equatable {
//   const CreateCategoryEvent();

//   @override
//   List<Object> get props => [];
// }
// class CreateCategory extends CreateCategoryEvent {
//   final Category category;

//   const CreateCategory(this.category);

//   @override
//   List<Object> get props => [category];
// }
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class AddCategory extends CategoryEvent {
  final String name;
  final IconData icon;
  final String expense;
  // final String description;
  // final String date;

  const AddCategory({
    required this.name,
    required this.icon,
    required this.expense,
    // required this.description,
    // required this.date,
  });

  @override
  List<Object> get props => [
        name,
        icon,
        expense,
        // description,
        // date,
      ];
}
