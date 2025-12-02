import 'package:belajar_day1/model/programming.dart';
// import 'package:belajar_day1/screens/counter_provider/counter_provider.dart';
// import 'package:belajar_day1/screens/counter_provider/counter_provider_screen.dart';
import 'package:belajar_day1/screens/counter_riverpod/counter_riverpod_screen.dart';
// import 'package:belajar_day1/screens/counter_provider/theme_provider.dart';
import 'package:belajar_day1/screens/detail_screen.dart';
import 'package:belajar_day1/screens/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';

void main() {
  //Provider Pattern
  // runApp(
  //   MultiProvider(providers: [
  //       ChangeNotifierProvider(create: (_) => CounterProvider()),
  //       ChangeNotifierProvider(create: (_) => ThemeProvider()),
  //     ], child: const MyApp(),
  //   )
  // );

  //Reiverpod Pattern
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const CounterProviderScreen(),
      home: const CounterRiverpodScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Programming? selectedProgramming;

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final screenOrientation = MediaQuery.of(context).orientation;

    debugPrint('Screen Height: $screenHeight');
    debugPrint('Screen Width: $screenWidth');
    debugPrint('Padding Top: $paddingTop');
    debugPrint('Padding Bottom: $paddingBottom');
    debugPrint('Screen Orientation: $screenOrientation');

    Widget body;

    if (screenWidth > 600 && screenOrientation == Orientation.landscape) {
      body = Row(
        children: [
          Expanded(
            flex: 1,
            child: ListScreen(onItemSelected: (data) {
              setState(() {
                selectedProgramming = data;
              });
            },),
          ),
          Expanded(
            flex: 2,
            child: DetailScreen(programming: selectedProgramming, isShowAppBar: false),
          ),
        ],
      );
    } else {
      body = ListScreen(onItemSelected: (data) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(programming: data, isShowAppBar: true),
          ),
        );
      },);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: body,
    );
  }
}
