TestYapisi BenimTestim = new TestYapisi();

class TestYapisi {
  int aktif_soru = 0;

  List<Soru> Sorular = [
    Soru(
        soruMetni: "Flutter’da kullanılan build modları değildir?",
        a: "Debug",
        b: "Profile",
        c: "Release",
        d: "Cura",
        cevap: "Cura Flutter da kullanılan build fonksiyonu değildir."),
    Soru(
        soruMetni:
            "Flutter SDKlarından en eski fakat kararlı çalışan versiyonu nedir",
        a: "beta",
        b: "dev",
        c: "stable",
        d: "master",
        cevap: "B seceneği"),
  ];
  void SonrakiSoruyaGec() {
    aktif_soru++;
  }

  String SoruMetniniYaz() {
    return Sorular[aktif_soru].SoruMetni;
  }

  String A() {
    return Sorular[aktif_soru].A;
  }

  String B() {
    return Sorular[aktif_soru].B;
  }

  String C() {
    return Sorular[aktif_soru].C;
  }

  String D() {
    return Sorular[aktif_soru].D;
  }
}

class Soru {
  String SoruMetni = "";
  String A = "";
  String B = "";
  String C = "";
  String D = "";
  String Cevap = "";
  Soru(
      {required String soruMetni,
      required String a,
      required String b,
      required String c,
      required String d,
      required String cevap}) {
    SoruMetni = soruMetni;
    A = a;
    B = b;
    C = c;
    D = d;
    Cevap = cevap;
  }
}
