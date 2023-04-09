import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'all_modules/flutter_modules_checklist/flutter_modules_checklist.dart';

class FlutterModulesPage extends StatefulWidget {
  const FlutterModulesPage({super.key});

  @override
  State<FlutterModulesPage> createState() => _FlutterModulesPageState();
}

class _FlutterModulesPageState extends State<FlutterModulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterModulesChecklist(),
    );
  }
}
