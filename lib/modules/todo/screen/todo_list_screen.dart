import 'package:flutter/material.dart';

import 'package:play_flutter/modules/todo/widget/todo_item.dart';
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

  final createTodoController = TextEditingController();

  void _handleSubmitButtonPressed() {
    setState(() {
      todoList.add(createTodoController.text);
      createTodoController.clear();
    });
  }

  void _handleSubmit(String text) {
    setState(() {
      todoList.add(text);
      createTodoController.clear();
    });
  }

  void _handlePressRemove(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    createTodoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoItem(
              title: todoList[index],
              onRemovePressed: () {
                _handlePressRemove(index);
              },
            );
          },
        )),
        SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TodoTextField(
                    onSubmitted: _handleSubmit,
                    controller: createTodoController,
                  ),
                ),
                FilledButton(
                    onPressed: _handleSubmitButtonPressed,
                    child: const Text("Submit"))
              ],
            ))
      ],
    );
  }
}
