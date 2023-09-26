import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get counter => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
