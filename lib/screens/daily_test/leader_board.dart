import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    final isim = [
      'Beyza',
      'Bahar',
      'Zelal',
      'Batuhan Kaan',
      'Beyza Nur',
      'Burak',
      'Sinem',
      'Kerem',
      'Furkan',
      'Yeşim',
      'Mina',
      'Alper',
      'Mustafa',
      'Nisa',
      'Bengü',
    ];
    final soyisim = [
      'Ekmekçi',
      'Togay',
      'Kaymaz',
      'Güven',
      'Okatan',
      'Kaya',
      'Gümüş',
      'Sarı',
      'Şekerci',
      'Taş',
      'Şahin',
      'Yıldız',
      'Kuş',
      'Özay',
      'Özdemir',
    ];
    final puan = [
      987,
      969,
      952,
      936,
      924,
      912,
      908,
      886,
      871,
      852,
      837,
      815,
      803,
      799,
      770,
    ];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.shade50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Liderlik Tablosu',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 30),
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.account_circle, size: 35),
                          Text(isim[2] + " " + soyisim[2],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(puan[2].toString()),
                          Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))),
                            height: size.height * 0.12,
                            width: size.width * 0.18,
                            decoration: BoxDecoration(
                              color: Color(0xff31ab5c),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.account_circle, size: 35),
                          Text(isim[1] + " " + soyisim[1],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(puan[1].toString()),
                          Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))),
                            height: size.height * 0.18,
                            width: size.width * 0.18,
                            decoration: BoxDecoration(
                              color: Color(0xff4187f4),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.account_circle, size: 35),
                          Text(isim[0] + " " + soyisim[0],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(puan[0].toString()),
                          Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))),
                            height: size.height * 0.24,
                            width: size.width * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffecbe12),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: size.width * 0.7,
                height: size.height * 0.11,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle, size: 45),
                        Text(
                          "Ali Yılmaz",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Puan",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text("556")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sıralama",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text("235")
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Sıralama",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Bursiyer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Puan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 40,
                width: size.width * 0.9 - 10,
              ),
              Container(
                width: size.width * 0.88,
                //   margin: EdgeInsets.all(10),
                child: SizedBox(
                  height: size.height * 0.28,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 3),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              title: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(isim[index + 3] +
                                          " " +
                                          soyisim[index + 3]),
                                    ),
                                    Text(
                                      puan[index + 3].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${index + 4}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: isim.length - 3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
