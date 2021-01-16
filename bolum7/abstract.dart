//abstract  sınıf= nesne üretilmez, normal ve abstract methodşar olur.
//abstract methodlar alt sınıflardan override etmek zorundadır.
//bir classta bir tane abstract method olsa ile o class abstract tanımlanmalıdır.abstract

main(List<String> args) {
  var kare = Kare();
  kare.en = 2;
  kare.boy = 2;
  print(kare.alanHesapla());
  print(kare.cevreHesapla());
  kare.mesajAl();
}

//Abstract classlar daha düzenli durması için kullanılır. DEğer dönmez
abstract class Sekil {
  int en;
  int boy;

  //Abstract class'ın methodları abstract olmalıdır.
  void mesajAl() {
    print("Mesaj");
  }

  void alanHesapla();
  void cevreHesapla();
}

class Kare extends Sekil {
  //Sekilden extend edildiği an override yapmamız için uyarı verdi.
  @override
  int alanHesapla() {
    return en * boy;
  }

  @override
  int cevreHesapla() {
    return 2 * (en * boy);
  }

  @override
  void mesajAl() {
    super.mesajAl();
  }
}
