import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      children: [
        TaskTile(
          taskTitle: 'Buy milk',
          isChecked: true,
          checkboxCallback: () {
            // Handle Checkbox
          },
          longPressCallback: () {
            // Handle Long Press
          },
        ),
        TaskTile(
          taskTitle: 'Buy eggs',
          isChecked: false,
          checkboxCallback: () {
            // Handle Checkbox
          },
          longPressCallback: () {
            // Handle Long Press
          },
        ),
        TaskTile(
          taskTitle: 'Buy bread',
          isChecked: false,
          checkboxCallback: () {
            // Handle Checkbox
          },
          longPressCallback: () {
            // Handle Long Press
          },
        ),
      ],
    );
  }
}
