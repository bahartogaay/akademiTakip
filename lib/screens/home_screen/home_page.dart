import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/daily_test_widget.dart';
import '../../utils/news_horizontal_widget.dart';
import '../sign_in/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          Constants.ouaWhiteIconPath,
          width: 35,
        ),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        elevation: 0,
        backgroundColor: Constants.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "${user?.email}",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(Constants.accountUserIconPath),
                backgroundColor: Constants.backgroundColor,
              ),
              decoration: BoxDecoration(
                color: Constants.backgroundColor,
              ),
              accountName: Text(
                "Ali Yılmaz",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              title: Text(
                'SIGN OUT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 5,
                ),
              ),
              tileColor: Constants.cinnabarColor,
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  ModalRoute.withName('/login'),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                ),
                DailyTestWidget(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              "YAKLAŞAN ETKİNLİKLER",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 3,
                fontWeight: FontWeight.w700,
                color: Constants.pinkColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NewsHorizontal(),
            //AcademyNewsWidget(),
          ],
        ),
      ),
    );
  }
}
