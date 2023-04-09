import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';

class ModuleChecklistSection extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Color colorOfTask;
  Function(bool?)? onChanged;

  ModuleChecklistSection({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.colorOfTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0, top: 20),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: colorOfTask,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Color.fromARGB(255, 122, 12, 141),
            ),
            Text(taskName,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none)),
          ],
        ),
      ),
    );
  }
}
