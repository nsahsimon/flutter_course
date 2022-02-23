import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todoey_app/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Task',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget> [
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        autofocus: true,
                        onChanged: (newText) {
                          newTaskTitle = newText;
                          print(newTaskTitle);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                      onPressed: () {
                        print(newTaskTitle);
                        if(newTaskTitle != null) {
                          Provider.of<Tasks>(context, listen: false).addTask(newTaskTitle);
                          Navigator.pop(context);
                        }
                        },
                      color: Colors.lightBlueAccent,
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ]
              ),

            ],
          ),
        ),
      ),
    );
  }
}
