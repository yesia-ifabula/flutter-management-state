import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifier = NotifierProvider<CounterNotifier, int>(CounterNotifier.new);

class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void increment() => state++;

  void decrement() => state--;

  String get parityTest => state.isEven ? "genap" : "ganjil";
}