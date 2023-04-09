import 'package:academy_tracker/calculations/calculate_percentage.dart';
import 'package:academy_tracker/constants/constants.dart';
import 'package:academy_tracker/screens/habit_tracker/entrepreneur_modules_page.dart';
import 'package:academy_tracker/screens/habit_tracker/flutter_modules_page.dart';
import 'package:academy_tracker/screens/habit_tracker/google_modules_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../databases/flutter_modules_database.dart';
import '../../utils/circular_progress_indicator.dart';
import '../../utils/course_progress_button.dart';
import '../../utils/progress_line.dart';

class HabitTrackerHomePage extends StatefulWidget {
  const HabitTrackerHomePage({super.key});

  @override
  State<HabitTrackerHomePage> createState() => _HabitTrackerHomePageState();
}

class _HabitTrackerHomePageState extends State<HabitTrackerHomePage> {
  void initState() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.backgroundColor,
        elevation: 8,
        centerTitle: true,
        title: Image.asset(
          Constants.ouaIconPath,
          width: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CircularProgressIndicatorWidget(),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
              child: Text(
                "Görevlerini tamamlamak için son gün 30 NİSAN!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            //flutter ///////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 10, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlutterModulesPage(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.blueColor,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Flutter ile Uygulama Geliştirme"),
              ),
            ),
            ProgressLine(
              status: 50,
              colorofProgress: Constants.blueColor,
            ),
            //////////////////////////////////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            //google
            //google ///////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 10, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GoogleModulesPage(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.cinnabarColor,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Google Proje Yönetimi Sertifikası"),
              ),
            ),
            ProgressLine(
              status: 20,
              colorofProgress: Constants.cinnabarColor,
            ),
            //////////////////////////////////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            // girisimcilik
            //girisimcilik ///////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 10, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EntrepreneurModulesPage(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.yellowColor,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Teknoloji Girişimciliği Eğitimi"),
              ),
            ),
            ProgressLine(
              status: 60,
              colorofProgress: Constants.yellowColor,
            ),
            //////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
