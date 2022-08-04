import 'package:flutter/material.dart';
import 'package:tskmgt/models/task.dart';
import 'package:tskmgt/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Something'),
    Task(name: 'More'),
    Task(name: 'More..'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
        TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}
