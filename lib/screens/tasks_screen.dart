import 'package:flutter/material.dart';

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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.list, size: 30.0, color: Colors.indigo),
                ),
                SizedBox(height: 10.0),
                Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700
                    )
                ),
                Text(
                    '12 tasks',
                    style: TextStyle(
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
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text('Buy milk'),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Buy eggs'),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('Buy bread'),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
