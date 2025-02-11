import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ItemTitle({super.key,required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        TextButton(onPressed: onPressed, child: Text("Show all"))
      ],
    );
  }
}