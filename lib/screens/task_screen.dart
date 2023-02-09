// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todaylist/models/task_data.dart';
import 'package:todaylist/screens/add_task_screen.dart';
import 'package:todaylist/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(
                  (newTaskTitle) {
                    // setState(() {
                    //   tasks.add(Task(name: newTaskTitle));
                    // });
                  },
                  addTaskCallback: () {},
                ),
              ),
            ),
          );
        },
        backgroundColor: Color.fromARGB(255, 4, 65, 65),
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 60,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDay List',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
