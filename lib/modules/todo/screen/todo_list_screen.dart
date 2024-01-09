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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: TodoList(),
                ),
              ),
              SizedBox(
                height: 50,
                child: TodoTextField(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
