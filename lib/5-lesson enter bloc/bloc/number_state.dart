part of 'number_bloc.dart';

@immutable
abstract class NumberState {}

class NumberInitial extends NumberState {}

class NumberAddState extends NumberState {
  int number;

  NumberAddState(this.number);
}
class NumberRemoveState extends NumberState {
  int number;

  NumberRemoveState(this.number);
}
