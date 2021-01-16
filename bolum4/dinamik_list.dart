main(List<String> args) {
  //ÖRNEK 1
  List<int> numaralarim = List(); //Dinamik liste tanımlama
  numaralarim.add(5); //dinamik listeye veri ekleme işlemi
  numaralarim.add(15);
  numaralarim.add(15);
  numaralarim.add(25);
  numaralarim.add(25);
  numaralarim.add(95);
  numaralarim.add(null);
  //statik listeler için veri atama işlemi ikin dinamik veriler için güncelleme işlemi olarak kullanılır
  numaralarim[1] = 8; //15 değerini 8 olarak değiştirir
  print("numara: ${numaralarim[1]}");
  print("--------------------------------------------------------");
  //listedeki son elemanı yazdır
  print("son numara: ${numaralarim[numaralarim.length - 1]}");
  print("--------------------------------------------------------");
  //istenilen değerdeki ilk eleman silme
  for (int s in numaralarim) {
    print("sayi: $s");
  }
  print("*************************");
  numaralarim.remove(25); //ilk 25 değerine sahip olanı sil
  for (int s in numaralarim) {
    print("sayi: $s");
  }
  print("--------------------------------------------------------");
  //istenilen indexteki değeri sil
  for (int s in numaralarim) {
    print("sayi: $s");
  }
  numaralarim.removeAt(5); //5.indexteki değer silincek
  print("*************************");
  for (int s in numaralarim) {
    print("sayi: $s");
  }
  print("--------------------------------------------------------");
  //listeyi temizle
  print("listedekii eleman sayısı: ${numaralarim.length}");
  numaralarim.clear();
  print("clear sonrası listedeki eleman sayısı: ${numaralarim.length}");
  print("--------------------------------------------------------");
  //ÖRNEK 2
  List<String> sehirler = ["Ankara", "İstanbul", "İzmir"];
  sehirler.add("Malatya");
  sehirler.add("Yozgat");
  sehirler.add("K.maraş");
  for (String sehir in sehirler) {
    print("Şehir: ${sehir}");
  }
}
