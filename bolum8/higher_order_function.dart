/*  Higher order functions= bir fonk. parametre olarak alan veya geriye döndüren fonk.
    Tabi ikisini aynı anda da yapabilir.  */

main(List<String> args) {
  Function sayilariTopla = (int a, int b) => a + b;
  birMethod("Suzan", sayilariTopla);

  var fonk = birdigerMethod();
  print(fonk(9));
}

//Parametre olarak func. aldığı için higher order func. olur
void birMethod(String isim, Function benimFonksiyonum) {
  print("Benim ismim ${isim}");
  benimFonksiyonum;
}

//Fonk. içinde fonk çağırdığı için higher order func. olur
Function birdigerMethod() {
  Function sayininkaresiniAl = (int s1) => s1 * s1;
  return sayininkaresiniAl;
}
