import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function? checkboxCallback;
  final Function? longPressCallback;

  const TaskTile({
    super.key,
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: true,
      onLongPress: () => longPressCallback!(),
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:(checkboxState) => checkboxCallback!(checkboxState),
      ),
    );
  }
}
