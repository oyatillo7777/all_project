import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_event.dart';

part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc() : super(NumberInitial()) {
    int son = 0;
    on<NumberEvent>((event, emit) {});
    on<NumberAddEvent>((event, emit) {
      son = son + 1;
      emit(NumberAddState(son));
    });
    on<NumberRemoveEvent>((event, emit) {
      son = son - 1;
      if (son < 0) {
        son = 0;
      } else {
        emit(NumberRemoveState(son));
      }
    });
  }
}
