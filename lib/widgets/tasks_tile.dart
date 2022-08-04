import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  TaskTile({required this.isChecked, required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (value) {}, //toggleCheckboxState,
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
