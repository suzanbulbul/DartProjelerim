main(List<String> args) {
  int sayi = 5;

  ////CONSTRUCTOR
  Ogrenci ogrenci1 = Ogrenci(23, " Gürkan", true);
  ogrenci1.bilgileriYazdir();
}

class Ogrenci {
  int _ogrtNo; // öznenin önüne konan _ private olduğu gösterir.
  String adi;
  bool erkekMi;

  Ogrenci(this._ogrtNo, this.adi, this.erkekMi) {}

  void bilgileriYazdir() {
    print(
        "Öğrenci adi: ${this.adi}\nÖğrenci No: ${this._ogrtNo}\nErkek mi: ${this.erkekMi}\n");
  }

  void dersCalis() {}
  void uyu() {}

  //SET TANIMI
  void set ogrenciNoAta(int ogrtNo) {
    if (ogrtNo <= 0) {
      this._ogrtNo = 0;
    } else
      this._ogrtNo = 0;
  }

  //SET TANIMI
  //1.Yöntem
  String get ogrenciNoOku {
    return "Öğrenci Numarası: $_ogrtNo";
  }

  /*  1.Yöntem
  String get ogrenciNoOku => "Öğrenci Numarası: $_ogrtNo";
   */
}
