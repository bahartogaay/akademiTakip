import 'package:academy_tracker/utils/progress_line.dart';
import 'package:flutter/material.dart';

class CourseProgressButton extends StatelessWidget {
  CourseProgressButton({
    super.key,
    required this.status,
    required this.courseType,
    required this.colorofBox,
    required this.onChanged,
  });
  final double status;
  final String courseType;
  final Color colorofBox;
  Function onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30.0, bottom: 10, left: 30, right: 30),
          child: ElevatedButton(
            onPressed: () => onChanged,
            style: ElevatedButton.styleFrom(
              backgroundColor: colorofBox,
              minimumSize: const Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text("${courseType}"),
          ),
        ),
        ProgressLine(
          status: status,
          colorofProgress: colorofBox,
        ),
      ],
    );
  }
}
