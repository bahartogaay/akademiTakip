import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';
import '../../../../databases/ent_database.dart';
import '../../../../databases/flutter_modules_database.dart';
import '../../../../utils/module_checklist_section.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EntModulesChecklist extends StatefulWidget {
  const EntModulesChecklist({super.key});

  @override
  State<EntModulesChecklist> createState() => _EntModulesChecklistState();
}

class _EntModulesChecklistState extends State<EntModulesChecklist> {
  //reference the hive box
  final _myBox = Hive.box('entCoursesBox');
  EntDatabase db = EntDatabase();

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
      db.entCoursesList[index][1] = !db.entCoursesList[index][1];
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 210),
      body: ListView.builder(
        itemCount: db.entCoursesList.length,
        itemBuilder: (context, index) {
          return ModuleChecklistSection(
            taskName: db.entCoursesList[index][0],
            taskCompleted: db.entCoursesList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            colorOfTask: Constants.yellowColor,
          );
        },
      ),
    );
  }
}
