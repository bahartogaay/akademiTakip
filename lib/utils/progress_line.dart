import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine(
      {super.key, required this.status, required this.colorofProgress});

  final double status;
  final Color colorofProgress;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: Radius.circular(20),
      animation: true,
      animationDuration: 1000,
      curve: Curves.easeIn,
      lineHeight: 8.0,
      percent: status / 100,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      progressColor: colorofProgress,
      backgroundColor: Constants.greyColor,
      animateFromLastPercent: true,
    );
  }
}
