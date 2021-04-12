#!/usr/bin/env  dart
import "myclass.dart";
import "class2.dart";

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
  return 0;
}
