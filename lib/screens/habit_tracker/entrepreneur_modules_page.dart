import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/constants.dart';
import 'all_modules/ent_courses_checklist/ent_courses_checklist.dart';

class EntrepreneurModulesPage extends StatefulWidget {
  const EntrepreneurModulesPage({super.key});

  @override
  State<EntrepreneurModulesPage> createState() =>
      _EntrepreneurModulesPageState();
}

class _EntrepreneurModulesPageState extends State<EntrepreneurModulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.ouaWhiteIconPath,
          width: 35,
        ),
        centerTitle: true,
        backgroundColor: Constants.yellowColor,
      ),
      body: EntModulesChecklist(),
    );
  }
}
