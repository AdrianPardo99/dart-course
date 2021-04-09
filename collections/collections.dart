#!/usr/bin/env  dart

import "dart:collection";

/*
 * enum tipo de dato de dart se utiliza
 *  para definir valores constantes con nombre.
 * Un tipo enumerado se declara mediante la palabra clave enum.
**/
enum colors {red, green, blue}
main(List<String> args){
  /*
   * Lista generalizada de cualquier tipo de dato
  **/
  List data=[1,2,3,4];
  print("Collection enum: ${colors.values}\nColection access: "+
    "${colors.red}\n\nLista data: ${data}");
  data.add("Algo");
  data.add(true);
  data.add(1.1);
  print("Lista data: ${data}");
  List<int> numbers=[1,2,3,4,5,6];
  print("Lista numbers: ${numbers}");
  /*
   * If you try to add another typedata like number, double, boolean or String
   * The program cant execute.
  **/
  Set nu={1,2,3};
  nu.add("Hola");
  print("\nSet nu: ${nu}");
  /*
   * Try to add a new data in the set...
  **/
  nu.add("Hola");
  print("Set nu: ${nu}");
  /*
   * Typedata Queue
  **/
  Queue items=new Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  print("Queue: ${items}");
  items.removeFirst();
  print("Queue: ${items}");
  items.add(11);
  print("Queue: ${items}");
  items.removeLast();
  print("Queue: ${items}");
  /*
   * Typedata Map <=> Dictionary in other language
  **/
  Map m={"name":"Adrian","lastname":"González Pardo","age":21};
  print("\nMap: ${m}\nKeys: ${m.keys}\nValues: ${m.values}");
  /*
   * Add new value
  **/
  m["grade"]="Bachelor";
  m.putIfAbsent("birthday",()=>"May 10th");
  print("\nMap: ${m}\nKeys: ${m.keys}\nValues: ${m.values}");

  return 0;
}
