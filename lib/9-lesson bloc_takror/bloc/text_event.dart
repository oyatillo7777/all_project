part of 'text_bloc.dart';

@immutable
abstract class TextEvent {}

class ChangeEvent extends TextEvent {
String text;

ChangeEvent(this.text);
}
