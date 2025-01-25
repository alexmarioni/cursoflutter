/*3. Cola FIFO (Primero en Entrar, Primero en Salir)

Simule una cola de espera para un banco usando una lista como FIFO.
Inicializa la cola con nombres de clientes: ["Ana", "Juan", "Luisa", "Pedro"].
Usa métodos para:
  Agregar dos nuevos clientes al final.
  Atender (remover) a los dos primeros clientes.
  Consultar quién es el próximo en ser atendido sin removerlo.
Imprime el estado de la cola después de cada operación.
*/
import 'dart:collection';

//Clase Cola con template para tipos
class Cola<T> {
  final List<T> _cola = [];
  // Preguntar si la cola está vacía
  bool esVacia() {
    return _cola.isEmpty;
  }

  // Sacar y retornar el elemento del frente
  T sacar() {
    if (esVacia()) {
      throw Exception('La cola está vacía');
    }
    return _cola.removeAt(0); // Elimina y retorna el primer elemento
  }

  // Agregar un elemento al final
  void agregar(T elemento) {
    _cola.add(elemento);
  }

  // Para mostrar el estado de la cola (solo para depuración)
  void mostrarCola() {
    print(_cola);
  }
}

void main(List<String> arguments) {
  print("Implementación de una cola (FIFO) tradicional, con clase y template");
  colaTradicional();
  print('\n'
      "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-"
      '\n');
  print(
      "Implementación de una cola (FIFO) usando Queue de la librería dart:collection");
  colaLibreria();
}

void colaTradicional() {
  //Construimos objeto
  Cola<int> colaBanco = Cola();
  //Usamos los métodos definidos
  colaBanco.agregar(1);
  colaBanco.agregar(2);
  colaBanco.agregar(3);
  colaBanco.agregar(4);
  colaBanco.agregar(5);
  while (!colaBanco.esVacia()) {
    print(colaBanco.sacar());
  }
}

void colaLibreria() {
  Queue<String> colaBanco = Queue.from(["Ana", "Juan", "Luisa", "Pedro"]);
  //Agregar nuevos clientes al final de la cola
  colaBanco.add("Maria");
  colaBanco.add("Carlos");
  // Atender clientes de a uno
  while (colaBanco.isNotEmpty) {
    print("Atendiendo a: ${colaBanco.removeFirst()}");
  }
}
