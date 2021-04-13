#!/usr/bin/env  dart
import "myclass.dart";
import "class2.dart";
import "scope.dart";
import "private.dart";
import "buffer.dart";

main(List<String> args){
  /*
   * Se crea la instancia de la clase
  **/
  MyClass m=new MyClass();
  m.sayHello("Adrian");
  Class2 c=new Class2();
  c.sayHello();
  c.name="Adrian";
  c.sayHello();

  Scope s=new Scope("Adrian");

  Private pv=new Private("Hola mundo");
  pv.mandaMsg("Esto es un mensaje desde el exterior");
  print(pv.mensaje);
  pv.mensaje="Mensaje externo modificado";
  print(pv.mensaje);
  print("Ingresa una cadena: ");
  String msg=Buffer.readStr();
  print("La entrada de teclado fue: ${msg}");
  return 0;
}
