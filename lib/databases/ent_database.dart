import 'package:hive_flutter/hive_flutter.dart';

class EntDatabase {
  List entCoursesList = [
    ['Temel Girişimcilik', false],
    ['Girişimciler için Hukuk', false],
    ['Girişimciler için Finans', false],
    ['Girişimciler için İK', false],
  ];
  final _modulesBox = Hive.box('entCoursesBox');

  void createInitialData() {
    entCoursesList = [
      ['Temel Girişimcilik', true],
      ['Girişimciler için Hukuk', true],
      ['Girişimciler için Finans', true],
      ['Girişimciler için İK', false],
    ];
  }

  void loadData() {
    entCoursesList = _modulesBox
        .get('ECOURSES'); // find flutterModules task, return its index
  }

  void updateDataBase() {
    _modulesBox.put('ECOURSES', entCoursesList); // add todolist to the box
  }
}
