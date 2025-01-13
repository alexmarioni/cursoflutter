void main() {
  final windplant = WindPlant(initialenergy: 100);

  print('wind: ${chargephone(windplant)}');
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
  PlantType type;

  energyplant({required this.energyleft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends energyplant {
  WindPlant({required double initialenergy})
      : super(energyleft: initialenergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyleft -= amount;
  }
}
