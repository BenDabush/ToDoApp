import 'package:flutter/material.dart';
import 'package:to_do_app/utli/dialog_box.dart';
import 'package:to_do_app/utli/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// list of todo task
  List ToDoList = [
    ["make me rich", false],
    ["do exercise", false],
  ];

  // checkbax was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      ToDoList[index][1] = !ToDoList[index][1];
    });
  }

  // create new task when the button push
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text("TO DO"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: ToDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: ToDoList[index][0],
            taskCompleted: ToDoList[index][1],
            onChanged: (value) => checkBoxChanged(ToDoList[index][1], index),
          );
        },
      ),
    );
  }
}
