// ignore_for_file: prefer_const_constructors, sort_child_properties_last, dead_code

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDotile extends StatelessWidget {
  final String taskName;
  final bool taskComplited;
  final bool isfontbold;
  final String color;
  Function(bool?)? onChanged;
  ToDotile({
    super.key,
    required this.taskName,
    required this.taskComplited,
    required this.onChanged,
    required this.isfontbold,
    required this.color,
  });
  colorchange(String a) {
    switch (a) {
      case "blue":
        return Colors.blue;
        break;
      case "red":
        return Colors.red;
        break;
      case "white":
        return Colors.white;
        break;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskComplited, onChanged: onChanged),

            // text
            Text(
              taskName,
              style: TextStyle(
                  fontWeight: isfontbold ? FontWeight.bold : null,
                  color: colorchange(color)),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(25),
      ),
    );
  }
}
