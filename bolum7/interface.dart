/* Dart dilinde interface yoktur. Fakat biz varmışcasına tanımlayacağız   
   Başka class'ı implement ederek zorunlu override işlemi yaparız 
   İnterface= Ortak özelliği olmayan ve aralarında kalıtımsal olarak ilişki 
  bulunmayan yapıları bir arada tutmaya yayar. */

main(List<String> args) {
  var tv = Televizyon();
  nesneleriCalistir(tv);

  var sesSistemi = SesSistemi();
  nesneleriCalistir(sesSistemi);
}

void nesneleriCalistir(Kumanda k) {
  k.sesAc();
  k.sesAzalt();
}

class Kumanda {
  void sesAc() {
    print("Kumanda sınıfından ses açılıyor...");
  }

  void sesAzalt() {
    print("Kumanda sınıfından ses azaltılıyo...");
  }
}

class BirDigerSinif {
  void herhangibirMethod() {
    print("Herhangi bir method tetiklendi...");
  }
}

//2 tane implement işlemi yapıldığı için 2 üst sınıflarında methodları override yapılmazsa hata alırız.
class Televizyon implements Kumanda, BirDigerSinif {
  @override
  void sesAc() {
    print("Televizyon sınıfından ses açılıyor...");
  }

  @override
  void sesAzalt() {
    print("Televizyon sınıfından ses azaltılıyo...");
  }

  @override
  void herhangibirMethod() {
    print("Televizyon classından bir method tetiklendi...");
  }
}

//İmplement işlemi yapıldığı için üst sınıfların methodları override yapılmazsa hata alırız.
class SesSistemi implements Kumanda {
  @override
  void sesAc() {
    print("Ses sisteminden sınıfından ses açılıyor...");
  }

  @override
  void sesAzalt() {
    print("Ses sisteminden sınıfından ses azaltılıyo...");
  }
}
