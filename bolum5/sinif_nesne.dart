main(List<String> args) {
  int sayi = 5;

  Ogrenci ogrenci1 = Ogrenci();
  var ogrenci2 = Ogrenci();
  ogrenci1.adi = "Suzan";
  ogrenci1.ogrtNo = 19;
  ogrenci1.erkekMi = false;

  ogrenci1.bilgileriYazdir();
}

class Ogrenci {
  int ogrtNo;
  String adi;
  bool erkekMi;

  void bilgileriYazdir() {
    print(
        "Öğrenci adi: ${this.adi}\nÖğrenci No: ${this.ogrtNo}\nErkek mi: ${this.erkekMi}\n");
  }

  void dersCalis() {}
  void uyu() {}
}
