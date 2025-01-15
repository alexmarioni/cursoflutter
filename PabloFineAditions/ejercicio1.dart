// ignore_for_file: unused_local_variable

/*1. Reorganización de Listas

Crea una lista inicial de números enteros del 1 al 20.
Crea un nuevo mapa donde:
  Las claves sean números pares de la lista original.
  Los valores sean esos mismos números multiplicados por 3.
Muestra el mapa resultante y la suma de todos los valores en él.
*/
import 'dart:math';

void main(List<String> arguments) {
  //lista de los números del 1 al 20
  var lista = List.generate(20, (index) => index + 1);

  //MÉTODO 1
  //mapa llenado iterando, pasando por los números pares de la lista
  // ignore: unused_local_variable
  var mapa = {for (int i = 1; i < 20; i += 2) lista[i]: lista[i] * 3};
  //print(mapa);

  //MÉTODO 2
  //mapa vacío
  var mapa2 = {};
  //iteramos por cada elemento de la lista
  //y verificamos que es múltiplo de 2
  for (var i = 0; i < 20; i++) {
    if (lista[i] % 2 == 0) mapa2[i + 1] = (i + 1) * 3;
  }
  //print(mapa2);

  //MÉTODO 3
  Random random = Random();
  int tamanio = random.nextInt(40) + 10;
  // ignore: unused_local_variable
  List<int> listaAleatoria = List.generate(tamanio, (_) => random.nextInt(100));
  //print(listaAleatoria);

  //Pero los números se pueden repetir en esa lista...

  //MÉTODO 4
  // Usar un Set para garantizar que no haya duplicados
  Set<int> listaAleatoriaUnica = {};
  while (listaAleatoriaUnica.length < tamanio) {
    listaAleatoriaUnica.add(random.nextInt(100)); // Genera números del 0 al 99
  }
  print(listaAleatoriaUnica);

  // Filtrar los elementos pares y crear un Map
  Map<int, int> mapaPares = {
    for (int valor in listaAleatoriaUnica)
      if (valor.isEven) valor: valor * 3
  };
  print(mapaPares);

  //Verificar si el mapa tiene valores y calcular la suma
  int suma = mapaPares.isEmpty ? 0 : mapaPares.values.reduce((a, b) => a + b);
  print(suma);
}
