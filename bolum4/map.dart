/* Map, 
    1.Sırasız yapıda elemanları saklar. (set gibi)
    2.Elemanları key-value olarak saklar.
    3.Herhangi veri türü kullanılabilir fakat key= unique(eşsiz) olması gerekir.
    4.Birbirlerinden farklı eleman içerir. (sözcük gibi)
    5.Sbt uzunlukta değildir, dinamik yapısı vardır. */

main(List<String> args) {
  //ÖRNEK 1

  // key= String , value= dherhangi bir veri türü gelebilir
  Map<String, Object> kisiler = Map();
  kisiler["ad"] = "Suzan"; //key: [], value: = sonraki ifade
  kisiler["yas"] = 22;
  print("******************************");

  //key yazdırma
  for (String key in kisiler.keys) {
    print("Key değeri: $key");
  }
  print("******************************");

  //value yazdırma
  for (Object value in kisiler.values) {
    print("Value değeri: $value");
  }
  print("******************************");

  //Key-Value yazdırma
  kisiler.forEach((anahtar, deger) => print("key: $anahtar value: $deger"));
  print("******************************");
  print(kisiler["yas"]); //yas keyinin valuesini döndürür
  print("******************************");
  //value değerini değiştirme
  kisiler.update("yas", (value) => 23);
  print(kisiler["yas"]);
  print("---------------------------------------------");

  //ÖRNEK2
  Map<String, int> sehiralankodlari = {
    "Ankara": 0312,
    "Bursa": 0224,
    "İzmir": 0232
  };
  print("Ankaranın alan kodu ${sehiralankodlari["Ankara"]}");
}
