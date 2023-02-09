import 'package:flutter/material.dart';
import 'package:todaylist/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'cleaning'),
    Task(name: 'study'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTasks(Task task) {
    task.doneChanged();
    notifyListeners();
  }

  void deletTasks(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
