import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import '../models/task.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {

  final _formKey = GlobalKey<FormState>();
  late String _taskTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => _taskTitle = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please type something first...';
                }
                return null;
              },
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  tasks.add(Task(name: _taskTitle));
                  Navigator.pop(context, _taskTitle);
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.indigo),
              ),
              child: const Text('Add', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
    );
  }
}