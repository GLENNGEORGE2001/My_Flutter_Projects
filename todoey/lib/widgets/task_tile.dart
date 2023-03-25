import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String title;
  final Function(bool?) checkBoxCallback;
  final Function() deleteTask;

  TaskTile({this.isChecked=false, required this.title, required this.checkBoxCallback, required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: deleteTask,
        child: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      )
    );
  }
}
