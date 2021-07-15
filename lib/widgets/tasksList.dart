import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:todoey/widgets/taskTile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TasksTile(title: TaskData.taskL[index].title, isChecked: TaskData.taskL[index].isChecked,
            onLongPress: (){
                TaskData.deleteTask(TaskData.taskL[index]);
            },
            checkBoxToggle: (checkBoxState) {
                TaskData.updateTask(TaskData.taskL[index]);
            },
          );
        },
          itemCount: TaskData.taskLength(),
        );
      },
      );
  }

}


