/*2. Manipulación de Sets
Cree un Set de números enteros del 1 al 15.
Cree un mapa donde:
  La clave sea cada número en el set.
  El valor sea una lista con sus múltiplos hasta el valor 5.
  Por ejemplo: {3: [3, 6, 9, 12, 15]}.
Devuelve el mapa resultante.
*/
void main(List<String> arguments) {
  Set<int> enteros = Set.from(List.generate(15, (index) => index + 1));
  Map<int, List<int>> mapaMultiplos = {};
  for (int numero in enteros) {
    mapaMultiplos[numero] = List.generate(5, (index) => numero * (index + 1));
  }
  mapaMultiplos.forEach((key, value) {
    print('$key: $value');
  });
}
