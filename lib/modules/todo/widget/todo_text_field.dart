import 'package:flutter/material.dart';

class TodoTextField extends StatelessWidget {
  const TodoTextField(
      {super.key, required this.controller, required this.onSubmitted});

  final TextEditingController controller;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Create todo',
      ),
    );
  }
}
