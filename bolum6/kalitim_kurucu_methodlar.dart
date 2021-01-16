main(List<String> args) {
  //1.YÖNTEM
  Kopek kopek1 = Kopek("labrador", "siyah");
  //2.YÖNTEM
  Kopek kopek2 = Kopek.isimliKurucu1("boe", "beyaz");
  //3.YÖNTEM
  Kopek kopek3 = Kopek.isimliKurucu2("mavi");
}

class Hayvan {
  String renk;
  //Hayvan sınıfının constructoru
  Hayvan(String renk) {
    print("Hayvan sınıfından nesne üretilen renk:  ${renk}");
  }
  Hayvan.isimliKurucu();
}

class Kopek extends Hayvan {
  String cins;
  /* Dart. java dili ile farklı olduğu iççin boş const oluşturmamıza izin vermez.
   Kopek, Hayvan sınıfından extends ettiği için const. yazılırken hayvan 
  sınıfındaki const. dikkat etmek gerekir. 
    Kopek sınıfında renk ile işimiz olmasa ile hayvan sınıfının conts. 
  tanımlandığı için onu tanımlamamız gerekir. 
    */
  //1.YÖNTEM
  Kopek(String cins, String renk) : super(renk) {
    this.cins;
    print("Köpek sınıfından nesne üretilen renk:  ${renk}");
  }
  //2.YÖNTEM
  Kopek.isimliKurucu1(String cins, String renk) : super(renk) {
    this.cins;
    print("Köpek sınıfından nesne üretilen renk:  ${renk}");
  }
  //3.YÖNTEM
  /* cins parametresini tanımlamak zorunda olmayalım diye hayvan classından içi boş 
  isimliKurucu fonk. oluşturup onu çağırıyoruz. */

  Kopek.isimliKurucu2(String renk) : super.isimliKurucu() {
    this.cins;
    print("Köpek sınıfından nesne üretilen renk:  ${renk}");
  }
}
