/*
 * File: manager.dart
**/
import "employee.dart";
class Manager extends Employee{
  void test(){
    print("Hi I'm the Manager\n${super.toString()}");
  }
}
