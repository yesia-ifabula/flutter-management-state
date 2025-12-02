import 'package:belajar_day1/model/programming.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Programming? programming;
  final bool isShowAppBar;
  const DetailScreen({super.key, required this.programming, this.isShowAppBar = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:isShowAppBar ? AppBar(
        title: Text(programming?.name ?? 'No name available') ,
      ) : null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              programming?.name ?? 'No name available',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8.0),
            Text(
              programming?.description ?? 'No description available',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}