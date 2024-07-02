import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
  });

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null,),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) => checkboxCallback(value),
      ),
    );
  }
}