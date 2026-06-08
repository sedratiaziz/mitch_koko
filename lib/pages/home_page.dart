import 'package:flutter/material.dart';
import 'package:mitch_koko/components/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todos = [
    {
      'text': 'Task1',
      'checked': true,
    },
    {
      'text': 'GYM',
      'checked': false,
    },
  ];

  void printName() {
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 99, 175),
      appBar: AppBar(title: Text('المهام')),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: todos.length,
        itemBuilder: (context, index) => TodoItem(
              text: todos[index]['text'], 
              checked: todos[index]['checked'],
            ),
      ),
    );
  }
}
