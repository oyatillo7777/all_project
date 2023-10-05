import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_event.dart';
part 'text_state.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  TextBloc() : super(TextInitial()) {
    on<TextEvent>((event, emit) {

    });
    on<ChangeEvent>((event,emit){
      emit(ChangeState(event.text));
    });
  }
}
