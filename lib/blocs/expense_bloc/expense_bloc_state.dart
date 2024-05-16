part of 'expense_bloc_bloc.dart';

sealed class ExpenseBlocState extends Equatable {
  const ExpenseBlocState();
  
  @override
  List<Object> get props => [];
}

final class ExpenseBlocInitial extends ExpenseBlocState {}
