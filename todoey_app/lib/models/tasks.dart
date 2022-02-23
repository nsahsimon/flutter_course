import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.dart';

class Tasks extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void clearTasks(){
    tasks.clear();
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void delTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

}