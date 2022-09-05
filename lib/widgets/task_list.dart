import 'package:flutter/material.dart';
import 'package:todoey_my_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_my_list/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      //taskData is an instance of TaskData class
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTittle: task.name,
            checkBoxCallBack: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallBack: () {
              print('long press');
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
