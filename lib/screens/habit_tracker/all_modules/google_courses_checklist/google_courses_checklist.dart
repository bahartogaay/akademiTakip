import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';
import '../../../../databases/flutter_modules_database.dart';
import '../../../../databases/google_proj_database.dart';
import '../../../../utils/module_checklist_section.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GoogleCoursesChecklist extends StatefulWidget {
  const GoogleCoursesChecklist({super.key});

  @override
  State<GoogleCoursesChecklist> createState() => _GoogleCoursesChecklistState();
}

class _GoogleCoursesChecklistState extends State<GoogleCoursesChecklist> {
  //reference the hive box
  final _myBox = Hive.box('coursesBox');
  GoogleProjDatabase db = GoogleProjDatabase();

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
      db.courseList[index][1] = !db.courseList[index][1];
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.cinnabarColor.withOpacity(0.4),
      appBar: AppBar(
        backgroundColor: Constants.cinnabarColor,
        title: Image.asset(
          Constants.ouaWhiteIconPath,
          width: 35,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: db.courseList.length,
        itemBuilder: (context, index) {
          return ModuleChecklistSection(
            taskName: db.courseList[index][0],
            taskCompleted: db.courseList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            colorOfTask: Constants.cinnabarColor,
          );
        },
      ),
    );
  }
}
