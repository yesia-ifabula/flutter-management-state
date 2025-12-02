import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners about the change
  }

  void decrement() {
    _count--;
    notifyListeners(); // Notify listeners about the change
  }

  String get parityTest {
    return _count.isEven ? "genap" : "ganjil";
  }
}
