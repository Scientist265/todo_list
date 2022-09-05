import 'package:flutter/material.dart';
import 'package:todoey_my_list/models/task.dart';
import 'package:todoey_my_list/models/task_data.dart';
import 'package:todoey_my_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}

// TaskScreen
//TaskList

// This is Task tile
