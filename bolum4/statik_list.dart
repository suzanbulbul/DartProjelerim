//   Dart dilinde array yoktur. Ama array mantığı ile eş, boyunu bilmemiz gereken sbt uzunluklu list vardır

main(List<String> args) {
  //ÖRNEK 1
  List<int> numaralar =
      List(3); //numaralar isminde 5 uzunluğunda int bir List tanımladık
  numaralar[0] = 3; //List bellekteki adrese eleman atama
  numaralar[1] = 8;
  numaralar[2] = 5;

  //numaralar[3] =5;  Hata verir.List uzunluğumuzdan fazla. Bellekte yer ayrılmamış.
  print("İndex: " + numaralar[2].toString());

  //ÖRNEK 2
  List<int> numaralarr = List.filled(
      4, 1); //eğer değer girilmediyse, değersiz tüm indexlere 1 değerini yaz

  //ÖRNEK 3
  var isimler = List(3); //veri türünü belirtmek istemezsek var ile tanımlarız

  isimler[0] = "Suzan";
  isimler[1] = "Nur";
  isimler[2] = "Bülbül";
  print("İsim Soyisim: " + isimler[0] + " " + isimler[1] + " " + isimler[2]);

  //ÖRNEK 4
  //Listeleri gezmek

  //1.Yöntem
  for (String isimleriOku in isimler) {
    print("Okunan isimler $isimler");
  }
  //2.Yöntem
  for (int i = 0; i < isimler.length; i++) {
    print("$i indexindeki isimler: ${isimler[i]}");
  }
  //3.Yöntem
  //Lambda
  isimler.forEach((sayi) => print(sayi));
}
