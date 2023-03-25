import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier{
  List<Tasks> _tasks = [
    Tasks(name: 'Get Milk'),
    Tasks(name: 'Go to Store'),
    Tasks(name: 'Go to Store')
  ];

  UnmodifiableListView<Tasks> get tasks{
    return UnmodifiableListView(_tasks);
}

  void addData(String task){
    _tasks.add(Tasks(name: task));
    notifyListeners();
  }

  void removeData(Tasks task){
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleCheck(Tasks task){
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }
}