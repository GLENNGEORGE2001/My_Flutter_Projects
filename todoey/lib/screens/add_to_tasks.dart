import 'package:flutter/material.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:provider/provider.dart';

class AddToTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value){
              newTask = value;
            },
          ),
          TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addData(newTask);
                Navigator.pop(context);
              },
              child: Container(
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'ADD',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
