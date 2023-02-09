// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() taskDelet;

  TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkBoxChange, 
      required this.taskDelet,
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: taskDelet ,
    );
  }
}
