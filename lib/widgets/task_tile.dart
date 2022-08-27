import 'package:flutter/material.dart';
import 'package:flutter/widgets/task_list.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a Task'),
      trailing: TaskCheckBox(),
    );
  }
}
