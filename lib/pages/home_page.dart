import 'package:flutter/material.dart';

import 'package:hive_ce/hive_ce.dart';
import 'package:mitch_koko/components/dialog_box.dart';
import 'package:mitch_koko/components/todo_item.dart';
import 'package:mitch_koko/data/Todo_db.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController myController = TextEditingController();
  TodoDB db = TodoDB();
  final _mybox = Hive.box('myBox');

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    if (_mybox.get('todoList') == null) {
      db.InitializeData();
      db.updateData();
    } else {
      db.loadData();
    }
  }

  void _handleCheckboxChange(bool? value, int index) {
    setState(() {
      db.todos[index]['checked'] = !db.todos[index]['checked'];
    });

    db.updateData();
  }



  void _removeTodo(int index) {
    setState(() {
      db.todos.removeAt(index);
    });

    db.updateData();
  }
  


  void _addTodo() {
    Map data = {'text': myController.text, 'checked': false};
    
    setState(() {
      db.todos.add(data);
      myController.clear();
    });

    db.updateData();
    // print('a');
    // _box.put('name', 'ali');
    // print(_box.get('name'));

    Navigator.pop(context);
  }

  void _createNewTodo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: DialogBox(
          todos: db.todos,
          controller: myController,
          OnAdd: _addTodo,
          OnCancel: () => Navigator.pop(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 99, 175),
      appBar: AppBar(title: Text('المهام')),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNewTodo,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: db.todos.length,
        itemBuilder: (context, index) => TodoItem(
          text: db.todos[index]['text'],
          checked: db.todos[index]['checked'],
          checkboxOnChange: (value) => _handleCheckboxChange(value, index),
          delete: (context) => _removeTodo(index),
        ),
      ),
    );
  }
}
