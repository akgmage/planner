import 'package:flutter/material.dart';
import 'package:tskmgt/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:tskmgt/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool? checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
