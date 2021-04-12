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
     *
     *
     * Set doesn't need more explication about what is a Set
     *
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
## Control de flujo
Muchas veces conocidas como las sentencias lógicas de ejecución de código, sentencias repetitivas de ejecución de código, entre otras funciones que controlan la ejecución de un programa.

Para el caso de usar terminal y ver que pasa con los asserts es necesario usar las siguientes opciones para ejecutar:
```bash
  dart --enable-asserts <filename.dart>
  # En caso de no ejecutarlo así el programa por si mismo sigue ejecutandose
```

```dart
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
```
## Ciclos
Los ciclos son sentencias de código que se repetirán un número exacto o finito de veces para realizar algunas operaciones en el código
```dart
  #!/usr/bin/env  dart
  import "dart:io";
  import "dart:async";

  String readStr(){
    return stdin.readLineSync().toString();
  }

  int? readInt(){
    return int.tryParse(readStr());
  }

  main(List<String> args){
    List fib=[BigInt.from(0),BigInt.from(1)];
    var x;
    /*
     * Ciclo while que verifica primero si la condición es verdadera para
     *  ejecutar en caso contrario sigue el código
    **/
    while(x==null){
      stdout.write("Ingresa el número de elementos que deseas trabajar: ");
      x=readInt();
    }
    int i;
    /*
     * Ciclo for inicia con un valor inicial, una condición logica a cumplir
     *  y el incremento de como va ir trabajando
    **/
    for(i=0;i<x;i++){
      fib.add(fib[0+i]+fib[1+i]);
    }
    print("Serie de fibonacci: ${fib}");
    /*
     * Nota para el caso de un ciclo do-while inicialmente se ejecuta la primer
     *  iteración de instrucciones sin analizar previamente si es posible o no
    **/

    /*
     * Ciclo for-each se usa para iterar sobre cada valor de una Lista
     *   o de alguna colección, siempre y cuando en la documentación lo permita
    **/
    i=-2;
    fib.forEach((var j){
      print("Elemento[${i++}]=${j}");
    });
    return 0;
  }
```
## Funciones
Las funciones son bloques de código los cuales ahorran el escribir o crear pequeños módulos de código los cuales van a ser utilizados en el mismo archivo o más tarde en otro archivo.
```dart
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
```
## Error Handlers
Muchas veces a la hora de escribir código o al menos a la hora de lo que mayormente conocen como desarrollo en producción generalmente ocurrirán errores, en los cuales necesariamente necesitaremos o rogaremos porque estos no paren o rompan el programa a la hora de ejecutar, por ello necesitaremos hacer uso de pequeños handlers que permitan el obtener el error y que estos intenten continuar con la ejecución de la aplicación.
```dart
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
```
## Acerca de paquetes y bibliotecas
Cuando creamos un proyecto completo vía CLI o IDE se generara un archivo de ejemplo que es el _calculate()_, pero de esta forma podemos darnos una idea al respecto de que existen módulos, paquetes o bibliotecas que por default no son incluidas en el archivo donde trabajamos para programar o desarrollar nuestra aplicación, tal es el caso de las bibliotecas _dart:io_ y _dart:async_ que nos funcionan para muchas tareas como la lectura de datos desde el teclado o desde un descriptor de archivo que se ven a nivel bajo y como _syscall_ de algunos sistemas operativos como Linux.

El incluir estos paquetes se hace sencillamente con:
```dart
  import "paquete/modulo";
```
Por otro lado cuando se programa a nivel aplicaciones más grandes como por ejemplo Clientes/Servidores se debe buscar en la página antiguamente conocida como _pub.dartlang.org_ hoy día _pub.dev_ donde encontraras módulos, bibliotecas y paquetes que funcionan para desarrollar aplicaciones en el lenguaje Dart, por ello mostrando un ejemplo de como se mostrara el como instalar el paquete http:
```bash
  # Para instalar en la maquina con dart
  dart pub add http
  # Para instalar en la maquina con flutter
  flutter pub pub add http
```
Para continuar en nuestro proyecto de Dart en el archivo _pubspec.yaml_ agregaremos las siguientes lineas en el apartado donde vienen las dependencias:
```yaml
  dependencies:
    http: ^0.13.1
```
Finalmente para importar el paquete en nuestro programa realizaremos lo siguiente:
```dart
  import 'package:http/http.dart';
```
Y de esta forma podemos utilizar los métodos y funciones que están escritos en Dart y con los que podemos trabajar/desarrollar sin problema utilizando un cliente http.

## Programación Orientada a Objetos
Para el caso de programación orientada a objetos habrá un y mil tutoriales de como realizarlo desde la creación de un proyecto general en un IDE o desde el CLI, por tanto aquí te presentare una forma sencilla que se utilizara en el mismo folder de archivos.

Por ello primero crearemos el archivo _myclass.dart_ y escribiremos el siguiente código:
```dart
  /*
   * File: myclass.dart
  **/
  class MyClass{
    void sayHello(String name)=>print("Hello ${name}");
  }
```
Despues en esa misma carpeta crearemos un siguiente archivo, por ejemplo _init.dart_, donde escribiremos lo siguiente:
```dart
  #!/usr/bin/env  dart
  import "myclass.dart";

  main(List<String> args){
    /*
     * Se crea la instancia de la clase
    **/
    MyClass m=new MyClass();
    m.sayHello("Adrian");
    return 0;
  }
```
Y de esta forma ejecutaremos el archivo _init.dart_ de modo que al final podremos ejecutar sin ningún problema el primer código que hemos escrito.

__Constructor en las clases__

Para este apartado se hara uso del archivo _init.dart_ y se creara otro archivo _class2.dart_ para realizar la prueba de este apartado:

___class2.dart___
```dart
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
```
___init.dart___
```dart
  #!/usr/bin/env  dart
  import "myclass.dart";
  import "class2.dart";

  main(List<String> args){
    /*
     * Se crea la instancia de la clase
    **/
    MyClass m=new MyClass();
    m.sayHello("Adrian");
    Class2 c=new Class2();
    c.sayHello();
    c.name="Adrian";
    c.sayHello();
    return 0;
  }
```
