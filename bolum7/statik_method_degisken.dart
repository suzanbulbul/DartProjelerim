main(List<String> args) {
  var ogrenci1 = Ogrenci();
  ogrenci1.ad = "Suzan";
  //statik değişşkenler sınıflar üzerinden erişilir.
  Ogrenci.ogrtSayisi++;
  print("Statik method");
  Ogrenci.ogrencisayisiYazdir();
  print(
      "${ogrenci1.ad} öğrencisi oluşturuldu, ogr sayisi: ${Ogrenci.ogrtSayisi} ve okul kodu: ${Ogrenci.okulKodu}");

  var ogrenci2 = Ogrenci();
  ogrenci2.ad = "Suzan";
  Ogrenci.ogrtSayisi++;
  print("Statik method");
  Ogrenci.ogrencisayisiYazdir();
  print(
      "${ogrenci2.ad} öğrencisi oluşturuldu, ogr sayisi: ${Ogrenci.ogrtSayisi} ve okul kodu: ${Ogrenci.okulKodu}");
}

class Ogrenci {
  String ad;

  //statik ve sabit olarak tanımlanır.
  static const int okulKodu = 1453;

  //static tanımladığımız için nesneye bağlı değil sınıfa bağlı olacak.
  static int ogrtSayisi = 0;

  //statik method tanımlama
  static void ogrencisayisiYazdir() {
    print("Toplam öğrenci sayisi: ${ogrtSayisi}");
  }

  //static olmayan alanlardan static method ve değişken tanımlanabilir.
  void adiniSoyle() {
    ogrencisayisiYazdir(); //statik method
    print("Benim adım: $ad");
  }
}
