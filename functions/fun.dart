#!/usr/bin/env  dart

/*
 * Función recursiva de un valor cualquiera así como
 * Función con un parametro predefinido para hacer sobrecarga
 * Esta misma función contiene que el tipo de dato a retornar es entero
**/
int factorialOf([int i=0]){
  return (i==0||i==1)?(1):(i*factorialOf(i-1));
}

/*
 * Función con parametros con nombre
**/
void isOnPath({String filename:"fun.dart"}){
  print("The file is on the path: ${filename}");
}

main(List<String> args){
  print(factorialOf(5));
  print(factorialOf());
  isOnPath();
  isOnPath(filename:"README.md");
  return 0;
}
