import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeNotifier = NotifierProvider<ThemeNotifier, Color>(ThemeNotifier.new);

class ThemeNotifier extends Notifier<Color> {
  @override
  Color build() => Colors.red;

  void updateTextColor(int number) => state = number.isEven ? Colors.blue : Colors.red;
  
}