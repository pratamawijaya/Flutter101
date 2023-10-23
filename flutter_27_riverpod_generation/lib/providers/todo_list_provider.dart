import 'dart:convert';

import 'package:flutter_27_riverpod_generation/main.dart';
import 'package:flutter_27_riverpod_generation/models/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'todo_list_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<void> build() async {
    final response = await http.get(Uri.https('dummyjson.com', '/todos'));
    logger.d('result build response -> ${response.body}');
  }

  Future<void> addTodo(Todo todo) async {
    final result = await http.post(
      Uri.https('dummyjson.com', '/todos/add'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        todo.toJson(),
      ),
    );
    logger.d('result addtodo  -> ${result.body}');
  }
}
