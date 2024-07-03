import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/new_task_form.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(// these 2 widgets, ensure the keyboard doesn't
      child: Container( // cover the bottom sheet content in smaller devices
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          color: const Color(0xff757575),
          child: Container(
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TaskForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}