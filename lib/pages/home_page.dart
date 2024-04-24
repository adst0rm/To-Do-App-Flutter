// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/diolog_bar.dart';
import 'package:to_do_app/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  List ToDoList = [
    ["English prep", false],
    ["SAT prep", false]
  ];

  void isChanged(bool? value, int index) {
    setState(() {
      ToDoList[index][1] = !ToDoList[index][1];
    });
  }

  void saveTask() {
    setState(() {
      ToDoList.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return Diolog_bar(
            controller: _controller,
            onCancel: () => Navigator.of(context).pop(),
            onSave: saveTask,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "TO DO TODAY by Ergen Adil",
              style: TextStyle(color: const Color.fromARGB(170, 0, 0, 0)),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.yellow,
        ),
        backgroundColor: Colors.yellow[200],
        body: ListView.builder(
          itemCount: ToDoList.length,
          itemBuilder: ((context, index) {
            return ToDotile(
              taskName: ToDoList[index][0],
              taskComplited: ToDoList[index][1],
              onChanged: (value) => isChanged(value, index),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ));
  }
}
