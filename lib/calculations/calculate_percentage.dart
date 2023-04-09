import 'package:academy_tracker/databases/flutter_modules_database.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../databases/ent_database.dart';
import '../databases/google_proj_database.dart';

double generalDone = 0;

class CalculatePercentage {
  static double forFlutterModule() {
    var modules = Hive.box('flutterModulesBox');
    FlutterModulesDatabase db = FlutterModulesDatabase();
    int done = 0;
    int all = db.modulesList.length;
    double percentage;
    for (int i = 0; i < db.modulesList.length; ++i) {
      done += db.modulesList[i][1] ? 1 : 0;
    }
    percentage = done / all;
    return percentage * 100;
  }

  static double forGoogleProjectManagementModule() {
    var courses = Hive.box('coursesBox');
    GoogleProjDatabase db = GoogleProjDatabase();
    int done = 0;
    int all = db.courseList.length;
    double percentage;
    for (int i = 0; i < db.courseList.length; ++i) {
      done += db.courseList[i][1] ? 1 : 0;
    }
    percentage = done / all;
    return percentage * 100;
  }

  static double forEntrepreneurshipModule() {
    var courses = Hive.box('entCoursesBox');
    EntDatabase db = EntDatabase();
    int done = 0;
    int all = db.entCoursesList.length;
    double percentage;
    for (int i = 0; i < db.entCoursesList.length; ++i) {
      done += db.entCoursesList[i][1] ? 1 : 0;
    }
    percentage = done / all;
    return percentage * 100;
  }

  static double generalDone() {
    var fPercentage = CalculatePercentage.forFlutterModule();
    var gPercentage = CalculatePercentage.forGoogleProjectManagementModule();
    var ePercentage = CalculatePercentage.forEntrepreneurshipModule();
    return (fPercentage + ePercentage + gPercentage) / 3;
  }
}
