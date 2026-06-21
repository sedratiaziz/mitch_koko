import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final bool checked;
  final Function(bool?)? checkboxOnChange;
  final Function(void)? delete;

  const TodoItem({
    super.key, 
    required this.text,
    required this.checked,
    required this.checkboxOnChange,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          onPressed: delete,
          backgroundColor: Colors.red,
          icon: Icons.abc,
          borderRadius: BorderRadius.circular(15),
        )
      ]),
      child: GestureDetector(
        onTap: () => checkboxOnChange?.call(!checked),
        child: Container(
          padding: EdgeInsets.  symmetric(vertical: 40),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text, 
                style: TextStyle(
                 decoration: checked ? TextDecoration.lineThrough : TextDecoration.none,
                 fontSize: 26,
                 fontWeight: FontWeight.bold,
              ),), 
              Checkbox(value: checked, onChanged: checkboxOnChange),
              // ElevatedButton(onPressed: , child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
