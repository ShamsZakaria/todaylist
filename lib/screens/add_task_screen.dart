// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_local_variable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaylist/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  final Function() addTaskCallback;
  AddTaskScreen(Null Function(dynamic newTaskTitle) param0,
      {required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 3,
                color: Colors.teal,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.teal, width: 4.0),
            ),
          ),
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: (() {
            Provider.of<TaskData>(context, listen: false)
                .addTask(newTaskTitle!);
            Navigator.pop(context);
          }),
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          style: TextButton.styleFrom(backgroundColor: Colors.teal),
        ),
      ]),
    );
  }
}
