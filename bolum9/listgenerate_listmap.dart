import 'dart:math';

void main(List<String> args) {
/*LİST.GENERATE  
  Generate methodu ile 30 tane öğrenci oluşturduk ve her öğrenciye random sayı atadık
  Generate= index için fonk. bekler.
  (index) bu örneklerde kullanmadık fakat kullanmak istersek fonk. içinde tanımlayabiliriz  */

  List<int> ogrenciNumaralari =
      List.generate(30, (index) => rastgeleOgrenciOlustur());

  //ogrenciNumaralari listesindeki int tipi, tipsiz olarak dönderiyo
  ogrenciNumaralari
      .forEach((oankiNumara) => print("Ögrenci Numarası: $oankiNumara"));

/*LİST.MAP 
  Ogrenci tipinde tumOgrenciler isminde list oluşturduk
  Map= tumOgrenciler boş listemizi ogrenciNumaralari kaynak alarak yani, 
ogrenciNumaralari değerleri kullanıp yeni bir liste oluşturalım. 
  map((ogrtNo) içine ogrenciNumaralari gezdiğimiz eleman gelecek.         */
  List<Ogrenci> tumOgrenciler = ogrenciNumaralari
      .map((ogrtNo) => Ogrenci("Öğrenci: $ogrtNo", ogrtNo))
      .toList();

  //print("$oankiOgrenci")); toString ile override yaptığımız işlem gerçekleşir.
  tumOgrenciler.forEach((oankiOgrenci) => print("$oankiOgrenci"));
}

int rastgeleOgrenciOlustur() {
  //Random olarak 0-60 sayı atar.
  int olusturulanSayi = Random().nextInt(60);

  if (olusturulanSayi != 0) {
    return olusturulanSayi;
  } else {
    int yenisayi = olusturulanSayi;
    return olusturulanSayi;
  }
}

class Ogrenci {
  String ad;
  int no;
  //Constr.
  Ogrenci(this.ad, this.no);

  @override
  String toString() {
    // TODO: implement toString
    return "Ogrenci adi: $ad, numara: $no";
  }
}
