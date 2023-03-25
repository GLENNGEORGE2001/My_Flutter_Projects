import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isChecked,
              checkBoxCallback: (checkboxState) {
                taskData.toggleCheck(taskData.tasks[index]);
              },
          deleteTask: (){
                taskData.removeData(taskData.tasks[index]);
          },);
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
