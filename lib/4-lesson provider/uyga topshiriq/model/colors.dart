import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color _color = Colors.black;

  Color get color => _color;

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }
}
