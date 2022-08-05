import 'package:flutter/material.dart';
import 'package:tskmgt/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Something'),
    Task(name: 'More'),
    Task(name: 'More..'),
  ];
}
