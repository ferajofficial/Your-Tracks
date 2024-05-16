import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:your_tracks/core/expense_repo.dart';
import 'package:your_tracks/features/models/category.dart';

part 'create_category_event.dart';
part 'create_category_state.dart';

class CreateCategoryBloc extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  final ExpenseRepository _expenseRepository;
  CreateCategoryBloc(this._expenseRepository) : super(CreateCategoryInitial()) {

    
    on<CreateCategory>((event, emit) async{
      emit(CreateCategoryLoading());
      try {
        await _expenseRepository.createCategory(event.category);
        emit(CreateCategorySuccess());
      } catch (e) {
        emit(CreateCategoryFailure());
      }


    });
  }
}
