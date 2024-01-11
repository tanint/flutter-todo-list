import 'package:flutter/material.dart';

class TodoTextField extends StatelessWidget {
  const TodoTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Create todo',
      ),
    );
  }
}
