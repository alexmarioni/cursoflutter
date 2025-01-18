void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.volar();
  batman.caminar();

  final donald = pato();
  donald.caminar();
  donald.volar();
  donald.nadar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando');
}

mixin Caminante {
  void caminar() => print('estoy caminando onda del walking');
}

mixin nadador {
  void nadar() => print('estoy re del swimming');
}

class Delfin extends Mamifero with nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class paloma extends Ave with Caminante, Volador {}

class pato extends Ave with Caminante, nadador, Volador {}

class tiburon extends Pez with nadador {}

class pezvolador extends Pez with Volador, nadador {}
