class Hero {
  
  String name;
  String power;

  //Constructor con parámetros nombrados (named parameters)
  //Los parámetros son opcionales al menos que usemos "required"
  Hero({required this.name, this.power = 'Sin poder'});

  //Constructor con parámetros posicionales (positional parameters)
  //Los parámetros son obligatorios al menos que encerremos con []
  Hero.positional(this.name, [this.power = 'Sin poder']);
  
  //Dart no es como C++ en la sobrecarga de operadores
  //Debemos tener uno por defecto y nombrar los demás

  //Otra forma de constructor posicional:
  //  Hero( String pName, String pPower )
  //     : name = pName,
  //       power = pPower;
  
  //Este método no necesita ser explícitamente invocado
  //Al tratar una variable que no es string como tal,
  // se utilizará automáticamente
  @override
  String toString() {
    return '$name - $power';
  }
}
void main() {
  //Modo de uso de constructor con parámetros nombrados
  final Hero wolverine = Hero(name: 'Logan',power: 'Regeneración');
  
  //No hace falta un método para mostrar el Hero
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
  
}