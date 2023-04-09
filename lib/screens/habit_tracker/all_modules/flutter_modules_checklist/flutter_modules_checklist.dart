import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';
import '../../../../databases/flutter_modules_database.dart';
import '../../../../utils/module_checklist_section.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FlutterModulesChecklist extends StatefulWidget {
  const FlutterModulesChecklist({super.key});

  @override
  State<FlutterModulesChecklist> createState() =>
      _FlutterModulesChecklistState();
}

class _FlutterModulesChecklistState extends State<FlutterModulesChecklist> {
  //reference the hive box
  final _myBox = Hive.box('flutterModulesBox');
  FlutterModulesDatabase db = FlutterModulesDatabase();

  @override
  void initState() {
    // if this is the 1st time ever opening the app, then create default data

    if (_myBox.get('MODULES') == null) {
      db.createInitialData();
    } else {
      //there is already data

      db.loadData();
    }

    super.initState();
  }

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.modulesList[index][1] = !db.modulesList[index][1];
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blueColor.withOpacity(0.4),
      appBar: AppBar(
        title: Image.asset(
          Constants.ouaWhiteIconPath,
          width: 35,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: db.modulesList.length,
        itemBuilder: (context, index) {
          return ModuleChecklistSection(
            taskName: db.modulesList[index][0],
            taskCompleted: db.modulesList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            colorOfTask: Constants.blueColor,
          );
        },
      ),
    );
  }
}
