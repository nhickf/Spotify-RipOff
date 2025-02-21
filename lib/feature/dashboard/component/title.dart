import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool showText;

  const ItemTitle(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.showText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Visibility(
            visible: showText,
            child: TextButton(
                onPressed: onPressed,
                child: Text("Show all",
                    style: Theme.of(context).textTheme.bodyMedium)))
      ],
    );
  }
}
