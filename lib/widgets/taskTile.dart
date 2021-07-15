import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final isChecked;
  final title;
  final checkBoxToggle;
  final onLongPress;

  TasksTile({this.title, this.isChecked, required this.checkBoxToggle, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600, decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none ),),
      trailing: Checkbox(
        side: BorderSide(width: 2.0, color: Colors.black, style: BorderStyle.solid),
        value: isChecked,
        onChanged: checkBoxToggle,
      ),
    );
  }

}

