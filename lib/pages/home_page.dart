import 'package:flutter/material.dart';
import 'package:mitch_koko/components/dialog_box.dart';
import 'package:mitch_koko/components/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController myController = TextEditingController();

  List todos = [];

  void _handleCheckboxChange(bool? value, int index) {
    setState(() {
      todos[index]['checked'] = !todos[index]['checked'];
    });
  }

  void _addTodo() {
    setState(() {
      todos.add({'text': myController.text, 'checked': false});
      myController.clear();
    });
    Navigator.pop(context);
  }

  void _createNewTodo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: DialogBox(
          todos: todos,
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
        child: Icon(Icons.kitchen_outlined),
      ),
      body: Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: todos.length,
          itemBuilder: (context, index) => TodoItem(
            text: todos[index]['text'],
            checked: todos[index]['checked'],
            checkbox_onchange: (value) => _handleCheckboxChange(value, index),
          ),
        ),
      ),
    );
  }
}
