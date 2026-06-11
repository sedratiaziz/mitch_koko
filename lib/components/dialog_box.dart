import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final List todos;
  final controller;
  VoidCallback OnAdd;
  VoidCallback OnCancel;

  DialogBox({ 
    Key? key,
    required this.todos,
    required this.controller,
    required this.OnAdd,
    required this.OnCancel,
    }) : super(key: key);


  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Add Task'),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: 'Enter task name...',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: widget.OnAdd, child: Text('add')),
              ElevatedButton(onPressed: widget.OnCancel, child: Text('cancel')),
            ],
          ),
        ],
      ),
    );
  }
}