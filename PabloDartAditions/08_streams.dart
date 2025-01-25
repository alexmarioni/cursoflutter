void main() {

  emitNumbers().listen((value) {});
  //Este es el menor llamado que haríamos del Stream,
  //suficiente porque pusimos un print dentro del return
  //de la función emitNumbers.
  
  emitNumbers().listen((value) {
    print('Transmitiendo $value');
  });
  //Esta sería una forma más apropiada, y quitaríamos 
  //el print de la función emitNumbers
}

//La función debe ser tipo de retorno Stream<type>
Stream<int> emitNumbers() {
  //Nótese cómo armamos todo en un return

  //periodic es uno de tantos constructores de Stream,
  //que emite valores numéricos secuenciales
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //Acá el duration hace que la emisión sea cada un segundo.
    //La función value es la que determina qué se hace
    //cada un segundo

    print('desde periodic $value');
    //Este print no va a servir de nada a menos que llamemos
    //a emitNumbers con el .listen

    return value;
  }).take(5);
  //El take indica cuántas emisiones se harán
}
