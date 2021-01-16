/*Thread işlemleri
  async= program senkron çalışırken, asenkron çalıştırmaktır. 
  Eğer büyük bir thread(islem) gelirse, o islem gerçekleşene kadar bekleriz.
Dosya işlemleri gerçekleştirilirken programın donmamasını istiyorsak eğer 
  async içinde future sınıfı vardır. */

import 'dart:async';

main(List<String> args) {
  print("Program başlatılıyor...");
  dosyaIceriginiGoster();
  print("Program bitti...");
}

/* 1.YÖNTEM
  Bu işlem yapıldığı zaman dosyaIndir deki Future içindeki işlem gerçekleştirilmeden program sonlandı. 

dosyaIceriginiGoster(){
  print("Dosya içeriği gösterilecek...");
  Future<String> dosyaIcerigi = dosyaIndir();
  print("DOSYA İÇERİĞİ: $dosyaIcerigi");
  Future<String> dosyaİcerigi= dosyaİndir();
  dosyaİcerigi.then((sonuc) => print("DOSYA İÇERİĞİ: $dosyaİcerigi"));
}   

   2.YÖNTEM 
  Future işlemi gerçekleştirilmeden programı sonlandırma dedik.
dosyaIceriginiGoster() async {
  print("Dosya içeriği gösterilecek...");
  String dosyaIcerigi = await dosyaIndir();
  print("DOSYA İÇERİĞİ: $dosyaIcerigi");
}

   3.YÖNTEM
  async-await kullanılmadan işlemin gerçekleştirilmesi then ile  */
dosyaIceriginiGoster() {
  print("Dosya içeriği gösterilecek...");
  Future<String> dosyaIcerigi = dosyaIndir();
  dosyaIcerigi.then((sonuc) => print("DOSYA İÇERİĞİ: $dosyaIcerigi"));
  ;
}

Future<String> dosyaIndir() {
  print("Dosya indirme işlemi başlatıldı...");
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    return "İndirilen dosya içeriği";
  });
  print("Dosya işlemi bitti...");
  return sonuc;
}
