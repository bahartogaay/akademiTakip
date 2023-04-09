import 'package:academy_tracker/constants/constants.dart';
import 'package:flutter/material.dart';

class NewsHorizontal extends StatefulWidget {
  const NewsHorizontal({super.key});

  @override
  State<NewsHorizontal> createState() => _NewsHorizontalState();
}

class _NewsHorizontalState extends State<NewsHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 10,
            ),
            ///////////////////////////////////////////////////////////////////////////
            InkWell(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                      image: DecorationImage(
                        image: AssetImage(Constants.illust2OuaPath),
                        fit: BoxFit.cover,
                        opacity: 0.3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.0,
                      left: 10,
                    ),
                    child: Text(
                      "14 Nisan'da",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                    ),
                    child: Text(
                      "APPJAM",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 90,
                      left: 10,
                    ),
                    child: Text(
                      "SONUÇLANIYOR!",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////
            SizedBox(
              width: 20,
            ),
            ///////////////////////////////////////////////////////////////////////////
            InkWell(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.4),
                      image: DecorationImage(
                        image: AssetImage(Constants.illust4OuaPath),
                        fit: BoxFit.cover,
                        opacity: 0.3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.0,
                      left: 10,
                    ),
                    child: Text(
                      "11.04.2023",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                    ),
                    child: Text(
                      "Tech to \nRescue \nWebinarı",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////
            SizedBox(
              width: 20,
            ),
            ///////////////////////////////////////////////////////////////////////////
            InkWell(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.3),
                      image: DecorationImage(
                        image: AssetImage(Constants.illust3OuaPath),
                        fit: BoxFit.cover,
                        opacity: 0.3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.0,
                      left: 10,
                    ),
                    child: Text(
                      "05.04.2023",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                    ),
                    child: Text(
                      "Psikolog Desteği ile \nPaylaşım Çemberi - 3",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 90,
                      left: 10,
                    ),
                    child: Text(
                      "ZOOM TOPLANTISI",
                      style: TextStyle(
                        letterSpacing: 3,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
