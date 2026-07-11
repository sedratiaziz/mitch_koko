import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class TodoDB {
  final _mybox = Hive.box('myBox');
  List todos = [];

  void InitializeData() {
    todos = [
      {'text': 'buy milk', 'checked': false},
      {'text': 'walk the cat', 'checked': true},
    ];
  }

  void loadData() {
    todos = _mybox.get('todoList');
  }

  void updateData() {
    _mybox.put('todoList', todos);
  }
}
