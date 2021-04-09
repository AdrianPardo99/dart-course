#!/usr/bin/env  dart
main(List<String> args){
  int age=18;
  /*
   * Assert check if a condition is true, if not the program exit by default
  **/
  assert(age>=18);

  print("Age: ${age}");
  /*
   * If-else statement check if a condition its true, but if not the program
   *  continue with other section of the code without exit like assert
  **/
  if(age>=18 && age<=35){
    print("Joven adulto");
  }else if(age>35&&age<=60){
    print("Adulto");
  }
  /*
   *  Short if or ternary conditional
  **/
  int type=(age>=18 && age<=30)?(0):(age>30&&age<=40)?(1):(age<18)?(2):(3);
  /*
   * switch statement
  **/
  switch(type){
    case 0:
      print("Juventud");
    break;
    case 1:
      print("Adulto");
    break;
    case 2:
      print("Menor");
    break;
    default:
      print("Ni idea");
  }
  return 0;
}
