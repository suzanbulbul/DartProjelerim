/* Lambda: ismi olmayan fonk.
Dartta her fonk. aslında nesneidir */

main(List<String> args) {
//Lambda fonk.
//ÖRNEK 1
  //1.Yöntem
  Function f1 = (int a, int b) {
    int topla = a + b;
    print(topla);
  };
  f1(5, 7);

  //2.Yöntem
  Function f2 = (int a, int b) => print(a + b);
  f2(5, 7);

//ÖRNEK 2
  //1.Yöntem
  var f3 = (int no) {
    return no * 2;
  };
  print(f3(7));

  //2.Yöntem
  var f4 = (int no) => no * 2;
  print(f3(7));
}

//Normal fonk.
void sayilariTopla(int a, int b) {
  int topla = a + b;
  print(topla);
}
