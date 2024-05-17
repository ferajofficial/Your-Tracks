

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
sealed class GetExpensesEvent extends Equatable {
  const GetExpensesEvent();

  @override
  List<Object> get props => [];
}

class GetExpenses extends GetExpensesEvent {}
// class GetExpenses extends GetExpensesEvent {}
