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
Y finalmente con ello obtendras el primer Hola Mundo hecho desde el pequeño template.
