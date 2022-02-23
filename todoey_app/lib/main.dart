import 'package:flutter/material.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/models/tasks.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => TasksScreen(),
            '//': (context) => AddTaskScreen()
      }
      ),
    );
  }
}

