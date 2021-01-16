main(List<String> args) {
  var kopek1 = Kopek(); //Kopek classından kopek1 isminde özne oluşturudk
  kopek1.renk = "Siyah";
  kopek1.cins = "Labrador";
  print("renk: ${kopek1.renk}");
  kopek1.havla();
  kopek1.yemekYe();

  var kedi1 = Kedi(); //Kopek classından kopek1 isminde özne oluşturudk
  kedi1.renk = "Siyah"; //en içteki tanım çalışır
  kedi1.yas = 2;
  print("renk: ${kedi1.renk}");
  kedi1.miyavla();
  kedi1.yemekYe();
}

class Hayvan {
  String renk = "Sarı";
  void yemekYe() {
    print("Hayvan yemek yiyor...");
  }
}

//KALITIM
class Kedi extends Hayvan {
  int yas;

  void miyavla() {
    print("Miyav");
  }

  //OVERRİDE
  @override
  void yemekYe() {
    print("Kedi yemek yiyor...");
  }
}

class Kopek extends Hayvan {
  String cins;

  void havla() {
    print("Hav");
  }

  @override
  void yemekYe() {
    print("Köpek yemek yiyor...");
  }
}
