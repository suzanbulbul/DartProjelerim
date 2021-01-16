/* List ile set farkı:
    1. List elemanları= sıralı tutar.
       Set elemanları= sıralı tutar.

    2. List bir elemandan çok tane olurabilir. Yani kural yoktur.
       Set bir elemandan sadece bir tane olur. Yani her eleman birbirinden farklıdır  
 */

main(List<String> args) {
  //ÖRNEK 1

  print("------------------------------------------------");
  Set<String> isimler = Set();
  isimler.add("Suzan");
  isimler.add("Mahinur");
  isimler.add("Reşat");
  isimler.add("Marul enişte");
  isimler.add("Mahinur");
  isimler.add("Suzan");
  isimler.add("Poyraz");
  //List kullansaydık 7 eleman görecekken set ise 5 eleman döndürülür
  for (String s in isimler) {
    print("isimler $s");
  }
  /* Sıralamam ile yazdırılmadığı için istenilen index değerine erişemeyiz
  print("isim: "+isimler[0];)

  Elemana ulaşmamız gerek ise;  */
  //1.Yöntem
  bool sonucum =
      isimler.remove("Suzan"); //suzan değerini siler. t/f değer dönderir
  print("sonuc: " + sonucum.toString());

  //2.Yöntem
  if (isimler.contains("Suzan")) {
    print("Suzan değeri var");
  }
  print("------------------------------------------------");

  //ÖRNEK 2
  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 2, 3, 5, 3, 4, 2, 2]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s in numaralar) {
    print("numaralar $s");
  }
  print("*******************************");
  numaralar.addAll(ciftSayilar); //numaralar setine citfsayılar listesi atandı
  for (int s in numaralar) {
    print("numaralar $s");
  }
}
