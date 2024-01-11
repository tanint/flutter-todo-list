import 'package:flutter/material.dart';
import 'package:play_flutter/modules/todo/widget/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return TodoItem(title: list[index]);
      },
    );
  }
}
