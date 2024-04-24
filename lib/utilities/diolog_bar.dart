// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/buttons.dart';

class Diolog_bar extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Diolog_bar(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Write your task down..."),
              controller: controller,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button(name: "Cancel", onPressed: onCancel),
                SizedBox(
                  width: 20,
                ),
                Button(name: "Save", onPressed: onSave)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
