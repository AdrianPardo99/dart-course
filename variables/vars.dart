#!/usr/bin/env dart

main(List<String> args){
  bool isOn;
  num a=10.1;
  /*
   * num puede tomar un valor tanto int como double
  **/
  int b=5;
  double c=10.5;
  String name="Full Name here";
  isOn=true;
  print("El valor de isOn=${isOn}");
  isOn=false;
  print("El valor de isOn=${isOn}\n"+
    "isOn es un tipo de dato: ${isOn.runtimeType}\n"+
    "El valor de a es=${a}\na es un tipo de dato: ${a.runtimeType}\n"+
    "El valor de b es=${b}\nb es un tipo de dato: ${b.runtimeType}\n"+
    "El valor de c es=${c}\nc es un tipo de dato: ${c.runtimeType}\n"+
    "Hello ${name}\nname es un tipo de dato: ${name.runtimeType}\n");
  /*
   * En caso de algunas cadenas de texto se puede realizar un parsing
   * y en caso de error se puede realizar un handle que permita la
   * interrupción del programa
  **/
  var x=int.tryParse('25.5');
  if(x==null){
    print("Error al realizar el parsing");
    /*
     * Código de preventivo para continuar el programa
     * en caso contrario
     * return 1;
     * u otro código de error
    **/
  }
  print("Valor de x=${x}");
  x=int.tryParse("25");
  if(x==null){
    print("Error al realizar el parsing");
    return 1;
  }
  print("Valor de x=${x}");
  return 0;
}
