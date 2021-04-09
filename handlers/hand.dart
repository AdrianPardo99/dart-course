#!/usr/bin/env  dart
int square(var value) {
  if (value == null) throw Exception("value is null");
  return value * value;
}
main(List<String> args){
  /*
   * Intentamos realizar una parte del código
   * si ocurre un error pasa al catch
   * finalmente ejecuta..
  **/
  try{
    print("${square(4)}");
    print("${square(null)}");
  }catch(e){
    print("Error ${e.toString()}");
  }finally{
    print("Se hizo lo que se pudo...");
  }
  return 0;
}
