import 'package:backendless_todo_starter/models/todo.dart';
import 'package:flutter/material.dart';

class TodoService with ChangeNotifier {
  Future<String> getTodos(String username, bool firstLoad) async {
    String result = 'OK';
    return result;
  }

  Future<String> saveTodoEntry(String username, bool inUI) async {
    String result = 'OK';
    return result;
  }

  void toggleTodoDone(int index) {}

  void deleteTodo(Todo todo) {}

  void createTodo(Todo todo) {}
}
