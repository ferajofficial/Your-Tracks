// part of 'create_category_bloc.dart';

// sealed class CreateCategoryState extends Equatable {
//   const CreateCategoryState();
  
//   @override
//   List<Object> get props => [];
// }

// final class CreateCategoryInitial extends CreateCategoryState {}
// final class CreateCategoryFailure extends CreateCategoryState {}

// final class CreateCategoryLoading extends CreateCategoryState {}

// final class CreateCategorySuccess extends CreateCategoryState {}
import 'package:equatable/equatable.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategorySuccess extends CategoryState {}

class CategoryFailure extends CategoryState {
  final String error;

  const CategoryFailure(this.error);

  @override
  List<Object> get props => [error];
}
