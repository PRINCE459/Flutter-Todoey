import 'package:flutter/cupertino.dart';
import 'package:todoey/modal/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _taskL = [
    Task(title: "Buy Milk", isChecked: false),
    Task(title: "Buy Choclate", isChecked: false),
    Task(title: "Buy Fruits", isChecked: false),
  ];

  UnmodifiableListView<Task> get taskL {
    return UnmodifiableListView(_taskL);
}

  int taskLength() {
    return _taskL.length;
  }

  void addTask(String newTask) {
    
    _taskL.add(Task(title: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.isCheckedToggle();
  }

  void deleteTask(task) {
    _taskL.remove(task);
    notifyListeners();
  }

}