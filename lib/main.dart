import 'package:flutter/material.dart';
import 'package:play_flutter/modules/todo/screen/todo_list_screen.dart';
import 'package:play_flutter/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme,
      home: const TodoListScreen(),
    );
  }
}
