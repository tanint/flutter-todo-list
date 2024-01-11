import 'package:flutter/material.dart';
import 'package:play_flutter/modules/todo/widget/todo_list.dart';
import 'package:play_flutter/modules/todo/widget/todo_text_field.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My todo list"),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: TodoListView(),
        ),
      ),
    );
  }
}

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<StatefulWidget> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  final todoList = ['Todo1', 'Todo2'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: TodoList(list: todoList)),
        const SizedBox(
          height: 50,
          child: TodoTextField(),
        )
      ],
    );
  }
}
