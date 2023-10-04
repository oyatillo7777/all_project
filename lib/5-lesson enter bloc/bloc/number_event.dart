part of 'number_bloc.dart';

@immutable
abstract class NumberEvent {}

class NumberAddEvent extends NumberEvent {}

class NumberRemoveEvent extends NumberEvent {}
