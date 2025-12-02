import 'package:belajar_day1/screens/counter_riverpod/counter_notifier.dart';
import 'package:belajar_day1/screens/counter_riverpod/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterRiverpodScreen extends ConsumerWidget {
  const CounterRiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonIncrement(context, ref),
            textCounter(context, ref),
            buttonDecrement(context, ref),
          ],
        ),
      )
    );
  }

  Widget textCounter(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final count = ref.watch(counterNotifier);
        final textColor = ref.watch(themeNotifier);
        return Text(
          '$count',
          style: TextStyle(fontSize: 48, color: textColor),
        );
      });
  }



  Widget buttonIncrement(BuildContext context, WidgetRef ref) {

    return FilledButton(
      onPressed: () {
        ref.read(counterNotifier.notifier).increment();
        ref.read(themeNotifier.notifier).updateTextColor(
          ref.read(counterNotifier)
        );
      },
      child: const Icon(Icons.add),
    );
  }
  Widget buttonDecrement(BuildContext context, WidgetRef ref) {

    return FilledButton(
      onPressed: () {
        ref.read(counterNotifier.notifier).decrement();
        ref.read(themeNotifier.notifier).updateTextColor(
          ref.read(counterNotifier)
        );
      },
      child: const Icon(Icons.remove),
    );
  }
}
