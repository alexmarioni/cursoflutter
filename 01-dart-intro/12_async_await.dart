


void main() async {
  print('inicio del programa');

  try {
    final value = await httpget('lapipiroladelmono.com');
  print(value);
  } catch (err) {
    print('tenemos un error: $err');
  }

  

  print('fin del programa');
}

Future<String> httpget(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  return 'error en la peticion http';
  //return 'Respuesta de la petición http';
}
