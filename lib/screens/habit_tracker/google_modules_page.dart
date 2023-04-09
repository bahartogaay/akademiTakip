import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/constants.dart';
import 'all_modules/google_courses_checklist/google_courses_checklist.dart';

class GoogleModulesPage extends StatefulWidget {
  const GoogleModulesPage({super.key});

  @override
  State<GoogleModulesPage> createState() => _GoogleModulesPageState();
}

class _GoogleModulesPageState extends State<GoogleModulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleCoursesChecklist(),
    );
  }
}
