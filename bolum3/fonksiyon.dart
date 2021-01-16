main(List<String> args) {
  int kenar1 = 9;
  int kenar2 = 8;

  //ORNEK 1
  print("Alan hesabı:" + alanBulma(9, 8).toString());
  cevreBulma(9, 8);
  //ORNEK 2
  int cikar = kenarlariCikar(9, 8);
  print("Kenarlar çıkartıldı.Fark: $cikar");
  //ORNEK 3
  print("Büyük olanı yaz:" + maxolaniBul(9, 8).toString());
  //ORNEK 4
  ulkerleriYazdir("Türkiye", "Hollanda",
      "Afrika"); //fonk. [ ] içerisinde tanımlanan değişkenler direk yazılabilir. Örnek --> "Afrika"
  //ORNEK 5
  kitalariYazdir("Avrupa",
      kita2:
          "Asya"); //fonk. { } içerisinde tanımlanan değişkenler ne döndüğünü belirtmek zorunda. Örnek --> kita2: "Asya"
}

//ORNEK 1
int alanBulma(int a, int b) {
  int alan = a * b;
  return alan;
}

void cevreBulma(int a, int b) {
  int cevre = 2 * (a * b);
  print("$a $b kenarlı cismin çevresi: $cevre");
}

/*  ÖRNEK 2

1.Yöntem

int kenarlariCikar(int a, int b) {
  return a - b;
}
*/

//2.Yöntem
int kenarlariCikar(int a, int b) =>
    a -
    b; //1.yöntemin kısaltılmış halidir. Sadece satırlı fonk. için geçerlidir.

/*  ÖRNEK 3

1.Yöntem

int maxolaniBul(int a, int b) {
  if(a<b){
    return b;
  }else
    return a;
}
*/

//2.Yöntem
int maxolaniBul(int a, int b) => (a < b) ? b : a;

//ÖRNEK 4

void ulkerleriYazdir(String ulke1, String ulke2, [String ulke3]) {
  //[ ] içine yazılan değer, mainde tanımlanan fonk. parametresine yazılmak zorunda değildir. Yazılmazsa hata vermez.
  print("Ülke 1: $ulke1");
  print("Ülke 2: $ulke2");

  if (ulke3 != null) {
    //ulke3 mainde parametre yazılmazsa null döner. Null değer dönmüyorsa yazdırmak için if kullandık
    print("Ülke 3: $ulke3");
  }
}

//ÖRNEK 5
void kitalariYazdir(String kita1, {String kita2, String kita3}) {
  // { } içine yazılan değer, mainde tanımlanan fonk. parametresine yazılmak zorunda değildir. Yazılmazsa hata vermez.
  // Yazılırken ise tanımlandığı parametre sırasına göre yazılmam zorunluluğu yoktur. Örnek kıta3 ü kıta2 den önc etanımlayabiliriz.
  print("Kıta 1: $kita1");
  print("Kıta  2: $kita2");

  if (kita3 != null) {
    //ulke3 mainde parametre yazılmazsa null döner. Null değer dönmüyorsa yazdırmak için if kullandık
    print("Kıta  3: $kita3");
  }
}
