import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_item.dart';
import '../models/task_data.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key,});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskItem(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    },
      itemCount: tasks.length,
    );
  }
}