import 'package:academy_tracker/screens/sign_in/auth.dart';
import 'package:academy_tracker/screens/sign_in/sifremi_unuttum.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordconttoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Auth authService = Auth();
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 207,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/x.png"),
                        )),
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 160,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "akademiTakip",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 45,
                                  letterSpacing: 3,
                                  fontWeight: FontWeight.w300,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 150,
                      child: Expanded(
                          child: Image.asset("assets/images/logo.png"))),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.8,
                    decoration: const BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        controller: emailcontroller,
                        obscureText: false,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.8,
                    decoration: const BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        controller: passwordconttoller,
                        obscureText: true,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Parola",
                          prefixIcon: Icon(Icons.password, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.8,
                    decoration: const BoxDecoration(
                      color: Color(0xffF8B905),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: OutlinedButton(
                        onPressed: () {
                          authService.girisYap(context, emailcontroller.text,
                              passwordconttoller.text);
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xff4187f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => sifremiUnuttum(),
                    )),
                    child: const Text(
                      "Parolamı Unuttum",
                      style: TextStyle(
                          color: Color(0xff4187f4),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
