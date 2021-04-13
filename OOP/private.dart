/*
 * File: private.dart
**/
class Private{
  String _mensaje="";
  Private(mensaje){
    this._mensaje=mensaje;
  }

  void _saludar(String msg)=>print(msg);

  void mandaMsg(String msg)=>this._saludar(msg);

  String get mensaje=>_mensaje;

  void set mensaje(String mensaje)=>this._mensaje=mensaje;
}
