import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.list, size: 30.0, color: Colors.indigo),
                ),
                const SizedBox(height: 10.0),
                const Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700
                    )
                ),
                Text(
                    '${tasks.length} Tasks',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                    )
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 30.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: const TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddTaskScreen(),
            isScrollControlled: true,
          );
        },
      ),
    );
  }
}