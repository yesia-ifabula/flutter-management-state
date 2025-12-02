import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  Color textColor = Colors.red;

  void changeThemeByNumber(int number) {
    textColor = number.isEven ? Colors.blue : Colors.red;
    notifyListeners();
  }
}