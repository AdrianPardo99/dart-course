# Curso de programación en Dart
Dart es un lenguaje de programación desarrollado por Google el cual fue creado con el fin de poder desarrollar aplicaciones móviles, de escritorio, servidores y web.

El mismo lenguaje es multiparadigma, entre lo que destaca lo siguiente:
* Soporta programación orientada a objetos
* Soporta programación imperativa
* Soporta programación funcional
* Soporta programación reflectiva

## Instalación
Para la instalación dependera mucho del sistema operativo.
### Windows
Para el caso de este sistema operativo puede hacerse uso de Chocolatey, el cual solo es ingresar los siguientes comando:
```bash
  choco install dart-sdk

  choco upgrade dart-sdk
```
En caso de no tener este programa se puede descargar el zip de la página oficial de dart [dart.dev](https://dart.dev/tools/sdk/archive) para la cual pensando en que es parecido a Linux solo es descomprimir el archivo en la carpeta que se va a trabajar y finalmente agregarla al path de trabajo
### Linux
Para el caso de Linux y pensando en que se trabajara con una distribución basada en Debian solo es necesario ejecutar los siguientes comandos:
```bash
  sudo apt-get update
  sudo apt-get install apt-transport-https
  sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
  sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

  sudo apt-get update
  sudo apt-get install -y dart
```

En caso contrario se puede hacer bajar el zip y aplicar los siguientes comandos:
```bash
  # Para bajar la versión estable de dart de la versión más actual
  # 2.12.2
  # Para arch i386
  wget "https://storage.googleapis.com/dart-archive/channels/stable/release/2.12.2/sdk/dartsdk-linux-ia32-release.zip"
  # Para arch amd64
  wget "https://storage.googleapis.com/dart-archive/channels/stable/release/2.12.2/sdk/dartsdk-linux-x64-release.zip"
  # Para arch arm32
  wget "https://storage.googleapis.com/dart-archive/channels/stable/release/2.12.2/sdk/dartsdk-linux-arm-release.zip"
  # Para arch arm64
  wget "https://storage.googleapis.com/dart-archive/channels/stable/release/2.12.2/sdk/dartsdk-linux-arm64-release.zip"

  # Una vez descargada la versión y arquitectura de tu agrado
  unzip dartsdk*
  cd dart-sdk
  dart_var=$(pwd)
  echo "PATH=\$PATH:${dart_var}/bin:${dart_var}/lib:${dart_var}/include" >> ~/.bashrc
  source ~/.bashrc
```
Con esto tendremos instalado dart como lenguaje en nuestro equipo de cómputo

## Templates de Dart

Muchas veces nos apoyaremos de los templates que vienen en dart para trabajar con ellos, estos templates son:

* console-simple
* console-full
  * De estas dos son aplicaciones sencillas en CLI
* package-simple
  * Un punto de partida para las bibliotecas o aplicaciones de Dart
* server-simple
  * Un servidor web creado con el paquete: shelf
* web-simple
  * Una aplicación web que usa solo bibliotecas centrales de Dart

## Hola mundo
Muchas veces y en muchos tutoriales te dirán que uses plugins que solo utilizan espacio y procesamiento innecesario para hacer una simple aplicación (Caso Netbeans, IntelliJ), por lo que podremos escribir lo siguiente:
```bash
  dart create <nombre_del_proyecto>
```
Con esto se creara la aplicación, lo cual crea en este caso 1 directorio y varios archivos en el mismo directorio, así como el subdirectorio _bin_ (En el caso de hacer uso de templates esto puede varias)

De acuerdo con esto en el directorio _bin_ se almacenara el archivo con el nombre\_del\_proyecto.dart, con ello obtendremos lo siguiente:
```dart
  void main(List<String> arg){
    print('Hello world!');
  }
```
Con esto se generara de forma automática un proyecto de forma console-simple por lo que incluso al momento de crearlo te marcara lo siguiente en tu terminal:
```bash
  cd hello
  dart run
```
Y finalmente con ello obtendrás el primer Hola Mundo hecho desde el pequeño template.
## Variables
Al igual que en otros lenguajes en Dart existen distintos tipos de datos, algunos de ellos son:
* Booleanos
* Números
* Strings

__Definiendo algunas variables en nuestro programa__

Para esto escribiremos lo siguiente en un nuevo proyecto de Dart o en un nuevo archivo
```dart
  #!/usr/bin/env dart

  main(List<String> args){
    bool isOn;
    num a=10.1;
    /*
     * num puede tomar un valor tanto int como double
    **/
    int b=5;
    double c=10.5;
    String name="Full Name here";
    isOn=true;
    print("El valor de isOn=${isOn}");
    isOn=false;
    print("El valor de isOn=${isOn}\n"+
      "isOn es un tipo de dato: ${isOn.runtimeType}\n"+
      "El valor de a es=${a}\na es un tipo de dato: ${a.runtimeType}\n"+
      "El valor de b es=${b}\nb es un tipo de dato: ${b.runtimeType}\n"+
      "El valor de c es=${c}\nc es un tipo de dato: ${c.runtimeType}\n"+
      "Hello ${name}\nname es un tipo de dato: ${name.runtimeType}\n");
    /*
     * En caso de algunas cadenas de texto se puede realizar un parsing
     * y en caso de error se puede realizar un handle que permita la
     * interrupción del programa
    **/
    var x=int.tryParse('25.5');
    if(x==null){
      print("Error al realizar el parsing");
      /*
       * Código de preventivo para continuar el programa
       * en caso contrario
       * return 1;
       * u otro código de error
      **/
    }
    print("Valor de x=${x}");
    x=int.tryParse("25");
    if(x==null){
      print("Error al realizar el parsing");
      return 1;
    }
    print("Valor de x=${x}");
    return 0;
  }
```

Como finalmente para el caso de hacer uso de objetos los cuales sean llamar al metodo _tryParse_ es necesario definir la variable como _var_ para que de este modo, el mismo lenguaje determine si es posible convertir la cadena de datos al tipo de datos en especifico.

__Constantes__

Para este caso es necesario destacar que no importando el tipo de dato es necesario solo escribir lo siguiente para definir una constante:
```dart
  const int age=21;
  const num pi=3.1416;
  const String s="Hola a todos";
```
## Inputs
Muchas veces aunque no es tan evidente existirán aplicaciones en las cuales solicitaremos a nuestro usuario la lectura de algún dato por el teclado, por ello y por sencilla utilidad haremos uso de dos bibliotecas de dart _dart\:io_ y _dart\:async_ para la lectura por medio del teclado y así nuestro programa pueda continuar y trabajar

Un ejemplo de esto sera:
```dart
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
```
## Colecciones
Las colecciones son distintos tipos de estructuras de datos, en las cuales podremos almacenar información de forma estática o dinámica de tal manera que se pueden trabajar con estos datos.
```dart
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
```
