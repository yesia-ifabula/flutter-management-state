import 'package:belajar_day1/model/programming.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final Function onItemSelected;
  const ListScreen({super.key, required this.onItemSelected});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final list = languagesList[index];
          return ListTile(
            title: Text(list.name),
            subtitle: Text(list.description),
            onTap: () => {
              onItemSelected(list)
            }
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: languagesList.length,
      );
  }
}