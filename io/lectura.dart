#!/usr/bin/env  dart
import "dart:io";
import "dart:async";

/*
 * Read a String? and return a String
**/
String readData(){
  return stdin.readLineSync().toString();
}

/*
 * Try to read a int if exists an Error return null
**/
int? readInt(){
  return int.tryParse(readData());
}

/*
 * Try to read a double if exists an Error return null
**/
double? readDouble(){
  return double.tryParse(readData());
}

main(List<String> args){
  print("Hello, whats your name?");
  var name=readData();
  print("How old are you?");
  var age=readInt();
  if(name.length==0){
    print("Come on please, tell me your name next time, bye!");
    return 1;
  }
  if(age==null){
    print("Come on man");
    return 1;
  }
  print("Hello ${name} you're ${age} years old");
  return 0;
}
