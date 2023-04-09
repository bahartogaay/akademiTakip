import 'package:academy_tracker/calculations/calculate_percentage.dart';
import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.round,
          radius: 120,
          animation: true,
          animationDuration: 2000,
          progressColor: Constants.greenColor,
          lineWidth: 25,
          percent: 0.6,
          center: Text(
            "%60",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
