import 'package:flutter/material.dart';

class TodoTextField extends StatelessWidget {
  const TodoTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Create todo',
      ),
    );
  }
}
