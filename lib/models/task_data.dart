import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_my_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  // getter to get the orivate tasks length
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  // is getter used in other to access tasks list which is private,outside the class

  //This method is responsible for adding new task to our tasks list but using ChangeNotifier by calling a nofityListener();
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone(); //this is responsible for checking and unchecking of task by calling toggleDone method
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
