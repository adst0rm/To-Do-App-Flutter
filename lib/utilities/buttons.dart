// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  VoidCallback onPressed;
  Button({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(name),
      textColor: Colors.black,
      color: Colors.yellow,
    );
  }
}
