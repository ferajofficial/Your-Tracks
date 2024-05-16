import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expense_bloc_event.dart';
part 'expense_bloc_state.dart';

class ExpenseBlocBloc extends Bloc<ExpenseBlocEvent, ExpenseBlocState> {
  ExpenseBlocBloc() : super(ExpenseBlocInitial()) {
    on<ExpenseBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
