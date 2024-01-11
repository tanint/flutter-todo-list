import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key, required this.title, required this.onRemovePressed});

  final String title;

  final VoidCallback onRemovePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        IconButton(
          icon: const Icon(Icons.remove_circle),
          tooltip: "Delete $title",
          color: Colors.red.shade400,
          onPressed: onRemovePressed,
        ),
      ],
    );
  }
}
