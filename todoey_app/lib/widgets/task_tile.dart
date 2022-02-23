import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function delTaskCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.delTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: delTaskCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        )
    );
  }
}


