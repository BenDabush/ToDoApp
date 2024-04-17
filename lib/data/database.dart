import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  // raun this metod if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Welcome to ToDoD App', false],
      ['Have a pleasant experience', false],
    ];
  }

  // lode the data from database
  void lodeData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
