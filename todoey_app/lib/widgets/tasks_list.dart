import 'package:todoey_app/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:todoey_app/models/tasks.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          taskTitle: Provider.of<Tasks>(context).tasks[index].name,
          isChecked: Provider.of<Tasks>(context).tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            Provider.of<Tasks>(context, listen: false).checkTask(index);
          },
          delTaskCallback: () {
            Provider.of<Tasks>(context, listen: false).delTask(index);
        }
        );
      },
      itemCount: Provider.of<Tasks>(context).tasks.length,
    );
  }
}