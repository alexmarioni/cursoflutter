void main() {
  print('inicio del programa');
  httpget('s').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('fin del programa');
  
}

Future<String> httpget(String url) async {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'error en la peticion http';
    //return 'Respuesta de la petición http';
  });
}
