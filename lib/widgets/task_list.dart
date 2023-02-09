// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todaylist/models/task_data.dart';
import 'package:todaylist/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxChange: (newValue) {
                taskData.updateTasks(taskData.tasks[index]);
              },
              taskDelet: () {
                taskData.deletTasks(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
