import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  TaskTile(
      {required this.checkboxCallback,
      required this.isChecked,
      required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
        value: isChecked,
        onChanged: checkboxCallback, //toggleCheckboxState,
      ),
    );
  }
}

// TaskCheckbox(
// toggleCheckboxState: (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState ?? true;
// });
// },
// checkboxState: isChecked),
