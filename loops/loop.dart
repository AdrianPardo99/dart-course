#!/usr/bin/env  dart
import "dart:io";
import "dart:async";

String readStr(){
  return stdin.readLineSync().toString();
}

int? readInt(){
  return int.tryParse(readStr());
}

main(List<String> args){
  List fib=[BigInt.from(0),BigInt.from(1)];
  var x;
  /*
   * Ciclo while que verifica primero si la condición es verdadera para
   *  ejecutar en caso contrario sigue el código
  **/
  while(x==null){
    stdout.write("Ingresa el número de elementos que deseas trabajar: ");
    x=readInt();
  }
  int i;
  /*
   * Ciclo for inicia con un valor inicial, una condición logica a cumplir
   *  y el incremento de como va ir trabajando
  **/
  for(i=0;i<x;i++){
    fib.add(fib[0+i]+fib[1+i]);
  }
  print("Serie de fibonacci: ${fib}");
  /*
   * Nota para el caso de un ciclo do-while inicialmente se ejecuta la primer
   *  iteración de instrucciones sin analizar previamente si es posible o no
  **/

  /*
   * Ciclo for-each se usa para iterar sobre cada valor de una Lista
   *   o de alguna colección, siempre y cuando en la documentación lo permita
  **/
  i=-2;
  fib.forEach((var j){
    print("Elemento[${i++}]=${j}");
  });
  return 0;
}
