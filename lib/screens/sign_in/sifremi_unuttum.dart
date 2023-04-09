import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'alert_page.dart';

class sifremiUnuttum extends StatefulWidget {
  const sifremiUnuttum({Key? key}) : super(key: key);

  @override
  State<sifremiUnuttum> createState() => _sifremiUnuttumState();
}

class _sifremiUnuttumState extends State<sifremiUnuttum> {
  final emailcontroller = TextEditingController();
  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  alert _alertDialog = alert();

  Future sifreSifirla() async {
    var result;
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailcontroller.text.trim());
      result = "success";
    } on FirebaseAuthException catch (error) {
      result = error.message.toString();
    }
    print(result);
    if (result == "The email address is badly formatted.") {
      return _alertDialog.alertDialog(context, "HATA", "Geçersiz email.");
    } else if (emailcontroller.text.trim().isEmpty) {
      return _alertDialog.alertDialog(
          context, "HATA", "Email alanı boş bırakılamaz.");
    } else if (result ==
        "There is no user record corresponding to this identifier. The user may have been deleted.") {
      return _alertDialog.alertDialog(context, "HATA", "Kullanıcı bulunamadı.");
    } else if (result == "success") {
      return _alertDialog.alertDialog(context, "BAŞARILI",
          "Parola sıfırlama linki mail adresine yollandı.");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  height: 207,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/x.png"),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, size: 24.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
            const Text(
              "Parolamı Unuttum",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Parolanızı sıfırlamak için email adresinizi giriniz.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
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
            const SizedBox(
              height: 60,
            ),
            Container(
              height: size.height * 0.07,
              width: 180,
              decoration: const BoxDecoration(
                color: Color(0xff31ab5c),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: OutlinedButton(
                  onPressed: () {
                    sifreSifirla();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xffF8B905),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Parola Sıfırla",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
