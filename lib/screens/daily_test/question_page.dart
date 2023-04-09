import 'package:academy_tracker/constants/constants.dart';
import 'package:academy_tracker/screens/daily_test/CoktanSecmeli.dart';
import 'package:academy_tracker/screens/home_screen/home_page.dart';
import 'package:academy_tracker/screens/main_page/main_page.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Constants.greenColor,
          centerTitle: true,
          title: Image.asset(
            Constants.ouaIconPath,
            width: 35,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'GÜNÜN SORUSU',
                style: TextStyle(
                  letterSpacing: 3,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.indigo,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Center(
                      child: Text(
                    BenimTestim.SoruMetniniYaz(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                )),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigoAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  "Yanlış Cevap!",
                                  style: TextStyle(
                                    color: Constants.cinnabarColor,
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Constants.cinnabarColor,
                                      ),
                                      child: Text("Tekrar Dene!"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          BenimTestim.A(),
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Constants.yellowColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  "Yanlış Cevap!",
                                  style: TextStyle(
                                    color: Constants.cinnabarColor,
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Constants.cinnabarColor,
                                      ),
                                      child: Text("Tekrar Dene!"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          BenimTestim.B(),
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Constants.cinnabarColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  "Yanlış Cevap!",
                                  style: TextStyle(
                                    color: Constants.cinnabarColor,
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Constants.cinnabarColor,
                                      ),
                                      child: Text("Tekrar Dene!"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          BenimTestim.C(),
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Constants.greyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  "Doğru Cevap!",
                                  style: TextStyle(
                                    color: Constants.greenColor,
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Constants.greenColor,
                                      ),
                                      child: Text("Tebrikler!"),
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainPage()),
                                          ModalRoute.withName('/homepage'),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          BenimTestim.D(),
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
