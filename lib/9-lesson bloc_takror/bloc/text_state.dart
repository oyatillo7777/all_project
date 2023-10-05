part of 'text_bloc.dart';

@immutable
abstract class TextState {}

class TextInitial extends TextState {}

class ChangeState extends TextState {
  String text;

  ChangeState(this.text);
}
