// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool istrue = false;

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
        body: ListView(
          children: [
            ToDotile(
                taskName: 'Celebrate the birthday',
                taskComplited: true,
                onChanged: (p0) {},
                isfontbold: true,
                color: "red"),
            ToDotile(
                taskComplited: false,
                taskName: "Drink 4L of water",
                onChanged: (p0) {},
                isfontbold: true,
                color: "blue"),
            ToDotile(
              taskComplited: true,
              taskName: "Google Flutter bug",
              onChanged: (p0) {},
              isfontbold: true,
              color: "brown",
            ),
            istrue
                ? ToDotile(
                    taskName: "Kill Bill",
                    taskComplited: true,
                    onChanged: (p0) {},
                    isfontbold: true,
                    color: "white")
                : Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      "Something new?...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              istrue = !istrue;
            });
          },
          child: Icon(Icons.add),
        ));
  }
}
