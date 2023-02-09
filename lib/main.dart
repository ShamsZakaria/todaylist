import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaylist/models/task_data.dart';
import 'package:todaylist/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Today List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskScreen(),
      ),
    );
  }
}
