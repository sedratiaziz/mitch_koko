import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final bool checked;
  Function(bool?)? checkbox_onchange;
  Function(void)? delete;

  TodoItem({
    super.key, 
    required this.text,
    required this.checked,
     this.checkbox_onchange,
     this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => delete,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(value: checked, onChanged: checkbox_onchange),
            Text(text), 
            // ElevatedButton(onPressed: , child: Text('data')),
          ],
        ),
      ),
    );
  }
}
