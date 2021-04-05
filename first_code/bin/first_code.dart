#!/usr/bin/env dart

main(List<String> args){
  if(args.length==0){
    print("Error usage dart run first_code.dart <argument>");
    return 1;
  }
  print("Hola "+args[0]);
  return 0;
}
