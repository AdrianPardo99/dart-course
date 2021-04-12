/*
 * File: class2.dart
**/
class Class2{
  String name="";

  Class2([String name=""]){
    print("Constructor");
    this.name=name;
  }

  void sayHello(){
    if(name.isEmpty){
      print("Hello");
      return;
    }
    print("Hello ${name} nice to meet you uwu");
    return;
  }
}
