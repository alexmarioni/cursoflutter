void main() {
  print('Inicio del programa');

  httpGet('https://web.whatsapp.com/').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print(fibo(40));
  print('Fin del programa');
  //Estas últimas dos líneas es para que notemos que el delay 
  //del future no detiene la ejecución, sinó que se empieza a contar 
  //mientras se sigue ejecutando y cuando ya no hay nada que hacer,
  //si el delay finalizó, se ejecuta el future
}

int fibo(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fibo(n - 1) + fibo(n - 2);
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 10), () {
  //Cambie esta línea para ver distintos comportamientos


    if (2 == 1) {
      return 'Respuesta de la petición http';
    }
    throw 'Error en la petición http';
  });
}
