main(List<String> args) {
  int sayi = 5;

  ////CONSTRUCTOR
  Ogrenci ogrenci1 = Ogrenci(23, " Gürkan", true);
  ogrenci1.bilgileriYazdir();
  //ÖZEL CONSTRUCTOR
  Ogrenci ogrenci2 = Ogrenci.cinsiyetBilgileriOlmayan(19, " Suzan");
  ogrenci2.bilgileriYazdir();
}

class Ogrenci {
  int ogrtNo;
  String adi;
  bool erkekMi;

  //CONSTRUCTOR
  //1.Yöntem
  Ogrenci(int ogrtNo, String adi, bool erkekMi) {
    this.ogrtNo = ogrtNo;
    this.adi = adi;
    this.erkekMi = erkekMi;
  }
  /* 
  2.Yöntem
  Ogrenci(this.ogrtNo, this.adi, this.erkekMi) {
  } */

  //ÖZEL CONSTRUCTOR
  //Cinsiyet alınmadan constructor yazmak
  //1.Yöntem
  Ogrenci.cinsiyetBilgileriOlmayan(int ogrtNo, String adi) {
    this.ogrtNo = ogrtNo;
    this.adi = adi;
  }
  /* 
  2.Yöntem
  Ogrenci.cinsiyetBilgileriOlmayan(this.ogrtNo, this.adi) {
  } */

  void bilgileriYazdir() {
    print(
        "Öğrenci adi: ${this.adi}\nÖğrenci No: ${this.ogrtNo}\nErkek mi: ${this.erkekMi}\n");
  }

  void dersCalis() {}
  void uyu() {}
}
