import 'package:flutter/material.dart';
import 'package:tskmgt/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:tskmgt/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          checkboxCallback: (bool? checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
