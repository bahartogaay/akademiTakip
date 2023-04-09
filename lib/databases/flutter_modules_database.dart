import 'package:hive_flutter/hive_flutter.dart';

class FlutterModulesDatabase {
  List modulesList = [
    ['Flutterdaki Widgetları Tanıma 1', false],
    ['Flutterdaki Widgetları Tanıma 2', false],
    ['Basit Bir Uygulama Geliştirelim', false],
    ['Riverpod ile State Management', false],
    ['Internet Kullanımı', false],
    ['Hata Yakalama', false],
  ];
  final _modulesBox = Hive.box('flutterModulesBox');

  void createInitialData() {
    modulesList = [
      ['Flutterdaki Widgetları Tanıma 1', false],
      ['Flutterdaki Widgetları Tanıma 2', false],
      ['Basit Bir Uygulama Geliştirelim', false],
      ['Riverpod ile State Management', false],
      ['Internet Kullanımı', false],
      ['Hata Yakalama', false],
    ];
  }

  void loadData() {
    modulesList = _modulesBox
        .get('MODULES'); // find flutterModules task, return its index
  }

  void updateDataBase() {
    _modulesBox.put('MODULES', modulesList); // add todolist to the box
  }
}
