void main() {
  final windplant = WindPlant(initialenergy: 100);
  final nuclearplant = nuclearPlant(energyleft:1000);

  print('wind: ${chargephone(windplant)}');
  print('nuclear: ${chargephone(nuclearplant)}');
}

double chargephone(energyplant plant) {
  if (plant.energyleft < 10) {
    throw Exception('not enough energy');
  }

  return plant.energyleft - 10;
}

enum PlantType { wind, nuclear, water }

abstract class energyplant {
  double energyleft;
  final PlantType type;

  energyplant({required this.energyleft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends energyplant {
  WindPlant({required double initialenergy})
      : super(energyleft: initialenergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount){
    energyleft -= amount;
  }
}

class nuclearPlant implements energyplant{
  @override
  double energyleft;

  @override
  final PlantType type = PlantType.nuclear;

  nuclearPlant({required this.energyleft});

  @override
  void consumeEnergy(double amount) {
    energyleft -= (amount * 0.5);
  }
}
