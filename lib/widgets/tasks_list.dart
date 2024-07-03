import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_item.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>( // use Consumer instead of Provider.of<Data>(context)
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskItem(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () => taskData.deleteTask(task),
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}