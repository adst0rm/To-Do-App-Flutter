// ignore_for_file: prefer_const_constructors, sort_child_properties_last, dead_code, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDotile extends StatelessWidget {
  final String taskName;
  final bool taskComplited;
  Function(bool?)? onChanged;

  ToDotile({
    super.key,
    required this.taskName,
    required this.taskComplited,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21, left: 25, right: 25),
      child: Container(
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskComplited, onChanged: onChanged),

            // text
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskComplited
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(25),
      ),
    );
  }
}
