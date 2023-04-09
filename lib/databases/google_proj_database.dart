import 'package:hive_flutter/hive_flutter.dart';

class GoogleProjDatabase {
  List courseList = [
    ['Proje Yönetiminin Temelleri', false],
    ['Projeyi Başlatma', false],
    ['Proje Planlaması', false],
    ['Projeyi Yürütme', false],
    ['Çevik Proje Yönetimi', false],
    ['Bitirme Projesi', false],
  ];
  final _modulesBox = Hive.box('coursesBox');

  void createInitialData() {
    courseList = [
      ['Proje Yönetiminin Temelleri', true],
      ['Projeyi Başlatma', true],
      ['Proje Planlaması', false],
      ['Projeyi Yürütme', false],
      ['Çevik Proje Yönetimi', false],
      ['Bitirme Projesi', false],
    ];
  }

  void loadData() {
    courseList = _modulesBox
        .get('COURSES'); // find flutterModules task, return its index
  }

  void updateDataBase() {
    _modulesBox.put('COURSES', courseList); // add todolist to the box
  }
}
