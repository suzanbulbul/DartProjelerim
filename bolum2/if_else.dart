main(List<String> args) {
  int sayi1 = 5;
  var sayi2 = 4;
  int kucuksayi;

//ÖRNEK 1
  print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");

//ÖRNEK 2
  int sonuc = 12 ~/ 5;
  5; //12/5 float bir sayıdır ve bu yüzden hata verir. ~ sadece int değer için geçerli ve float değer dönecek sayısıyı int yazarak int döndürmemizi sağlar.
  print("Bölüm: $sonuc");

//ÖRNEK 3
/*
1.Yöntem
if(sayi1 < sayi2){
  kucuksayi = sayi1;
}
else{
  kucuksayi = sayi2;
}   */
//2.Yöntem
  sayi1 < sayi2 ? kucuksayi = sayi1 : kucuksayi = sayi2;
  print("Küçük sayi $kucuksayi");
//3.Yöntem
  kucuksayi = (sayi1 < sayi2) ? sayi1 : sayi2;
  print("Küçük sayi $kucuksayi");

//ÖRNEK 4
  String isim = "Suzan";
  String
      soyisim; //soyisim değer atanmadığı için print ile yazdırırsak null döner.
  String mesaj;

  mesaj = isim ??
      soyisim; //?? işlemi hangi değer null değil onun yazılmaması kontrol eder.İkisi de null ise null yazar
  print(mesaj);

//ÖRNEK 5
  //1.Yöntem
  List isimListesi = ["suzan", "bulbul"];
  for (String gecici in isimListesi) {
    //isimListesindeki değerleri sıra sıra gecici'ye ata
    print("$gecici");
  }
  //2.Yöntem
  for (int i = 0; i < isimListesi.length; i++) {
    print("Okunan değer: " + isimListesi[i]);
  }

//ÖRNEK 6
  distakiDongu:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      //3x3 çarpım tablosu
      print("$i * $j ${i * j}");

      if (i == 2) {
        //i=2 olduğu zaman ilk tanımlanan for döngüsü durur
        break distakiDongu;
      }
    }
  }
}
