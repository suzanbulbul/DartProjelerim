main(List<String> args) {
  Asker asker = Asker();
  Er er = Er();
  Yuzbasi yuzbasi = Yuzbasi();

  hazirOl(asker);
  /*POLİMORFİZM
    Er ve yüzbaşı asker sınıfından extends edildiği için yukarı çevrim upcasting
  denilen olay olur ve Asker öznesi için tanımlanan fonk. er ve yüzbaşı için hata vermez. */

  hazirOl(er);
  hazirOl(yuzbasi);

  /*LATE BİNDİNG
    Asker classından yeni isiminde objeyi Er claasında tanımlama işlemidir. 
  Ve en içte Er çağrıldığı için Er classındaki işlem geçerli sayılır.  */

  Asker yeni = Er();
  hazirOl(yeni);
}

void hazirOl(Asker asker) {
  asker.selamVer();
}

class Asker {
  void selamVer() {
    print("Asker selam ver");
  }
}

class Er extends Asker {
  @override
  void selamVer() {
    print("Er selam ver");
  }
}

class Yuzbasi extends Asker {
  @override
  void selamVer() {
    print("Yuzbasi selam ver");
  }
}
