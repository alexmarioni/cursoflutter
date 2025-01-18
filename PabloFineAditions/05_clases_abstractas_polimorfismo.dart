void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  //los getters y setters definidos permiten acceder al atributo privado sin usar _
  print(windPlant.energyLeft);
  windPlant.energyLeft = 66;
  print(windPlant.energyLeft);
  print('wind: ${chargePhone(windPlant)}');

  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

//Declaramos nuevos tipos
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double _energyLeft;
  final PlantType type;

  //El atributo privado nos altera un poco el constructor
  EnergyPlant({required double energyLeft, required this.type})
      : _energyLeft = energyLeft;

  double get energyLeft => _energyLeft; // Getter
  set energyLeft(double energia) {
    _energyLeft = energia; // Setter que modifica directamente _energyLeft
  }

  void consumeEnergy(double amount);
}

// Con extends heredamos y podemos sobreescribir o no, a gusto
class WindPlant extends EnergyPlant {
  //Con super nos referimos al padre de la clase actual
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);
  //Nótese el uso de type: PlantType.wind ya que solo wind no sería un tipo
  @override
  void consumeEnergy(double amount) {
    this.energyLeft -= amount;
  }

  @override
  set energyLeft(double energia) {
    if (energia > 100) {
      print('So loco vos?');
    } else {
      super.energyLeft = energia; // Llamamos al setter de la clase base
    }
  }
}

//Implements debe utilizar TODO lo declarado en la clase padre y sobreescribirlo
class NuclearPlant implements EnergyPlant {
  @override
  double _energyLeft;  // No podemos usar un setter de la clase base directamente
  
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required double energyLeft}) : _energyLeft = energyLeft;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }

  @override
  double get energyLeft => _energyLeft;

  // Implementamos el setter
  @override
  set energyLeft(double energia) {
    if (energia > 200) {
      print('¡Energía desbordada!');
    } else {
      _energyLeft = energia; // Aquí modificamos directamente _energyLeft
    }
  }
}
