// ignore_for_file: must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  final VoidCallback deleteFunction;
  ToDoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  side: BorderSide(color: Colors.white, width: 2),
                  activeColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  taskName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: deleteFunction,
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
