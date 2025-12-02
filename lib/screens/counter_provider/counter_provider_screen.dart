import 'package:belajar_day1/screens/counter_provider/counter_provider.dart';
import 'package:belajar_day1/screens/counter_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderScreen extends StatelessWidget {
  const CounterProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonIncrement(context),
            textCounter(context),
            textCounter2(context),
            textCounter3(context),
            buttonDecrement(context),
          ],
        ),
      )
    );
  }

  Widget textCounter(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counterProvider.count}',
              style: const TextStyle(fontSize: 48),
            ),
            Text(counterProvider.parityTest),
          ],
        );
      },
    );
  }

  Widget textCounter2(BuildContext context) {
    return Selector<CounterProvider, int>(
      selector: (context, counterProvider) => counterProvider.count,
      builder: (context, count, _) {
        return Text(
          count.toString(),
          style: const TextStyle(fontSize: 24),
        );
      },
    );
  }

  Widget textCounter3(BuildContext context) {
    return Selector2<CounterProvider, ThemeProvider, (int, Color)>(
      selector: (context, counterProvider, themeProvider) => (
        counterProvider.count,
        themeProvider.textColor
      ),
      builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.$1.toString(),
              style: TextStyle(fontSize: 24, color: value.$2),
            ),
          ],
        );
      },
    );
  }


  Widget buttonIncrement(BuildContext context) {
    final counterProvider = context.read<CounterProvider>();
    final themeProvider = context.read<ThemeProvider>();
    return FilledButton(
      onPressed: () {
        counterProvider.increment();
        themeProvider.changeThemeByNumber(counterProvider.count);
      },
      child: const Icon(Icons.add),
    );
  }
  Widget buttonDecrement(BuildContext context) {
    final counterProvider = context.read<CounterProvider>();
    final themeProvider = context.read<ThemeProvider>();
    return FilledButton(
      onPressed: () {
        counterProvider.decrement();
        themeProvider.changeThemeByNumber(counterProvider.count);
      },
      child: const Icon(Icons.remove),
    );
  }
}
