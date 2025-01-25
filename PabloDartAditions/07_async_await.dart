void main() async {
  // Debemos esperar el resultado de httpGet.
  // Si el main no fuera asíncrono,
  // no nos detendríamos y continuaríamos ejecutando
  // antes de obtener el valor de retorno.
  //Si elimina "async" y "await" notará el erróneo
  //comportamiento del print(value)

  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  } on Exception catch (excep) {
    print("""Parece que tenemos una excepción aquí:
    $excep
    """);
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Esto se ejecuta siempre');
  }

  print('Fin del programa');
}

// Una función asíncrona no puede retornar otra cosa que no sea un future
// Explicitar async es necesario para usar await
Future<String> httpGet(String url) async {
  // Ahora que usamos await, la ejecución sí se detendrá
  // para esperar a que se cumpla el future
  await Future.delayed(const Duration(seconds: 2));
  // y luego se sigue

  throw Exception('Acá no sé qué pasó pero es raro');

  // throw 'Error en la petición';

  // return 'Tenemos un valor de la petición';
}
