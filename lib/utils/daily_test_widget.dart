import 'package:academy_tracker/screens/daily_test/question_page.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class DailyTestWidget extends StatelessWidget {
  const DailyTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 0,
          left: 20,
          right: 20,
        ),
        child: Stack(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Constants.illustOuaPath),
                  fit: BoxFit.contain,
                  opacity: 0.7,
                ),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 100,
                    offset: Offset(0, 5),
                    color: Constants.primaryColor,
                  ),
                ],
                color: Constants.backgroundColor,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 23),
              child: Text(
                "Hoşgeldin!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 65.0,
                left: 30,
              ),
              child: Text("Günün sorusunu çözmeye hazır mısın ?"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 160,
                left: 30,
                right: 30,
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionPage(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.cinnabarColor.withOpacity(0.60),
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Hemen günün sorusunu yanıtla!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
