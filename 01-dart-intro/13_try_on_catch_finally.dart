void main() async {
  print('inicio del programa');

  try {
    final value = await httpget('lapipiroladelmono.com');

    print('exito: $value');
  } on Exception catch (err) {
    print('tenemos una excepción: $err');

  } catch (err) {
    print('uf pasó algo re feo amigo: $err');

  } finally {
    print('fin del try y catch');
  }

  print('fin del programa');
}

Future<String> httpget(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en la url');
  // throw 'error en la peticion http';
  //return 'Respuesta de la petición http';
}
