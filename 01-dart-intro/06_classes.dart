void main() {
  final wolverine = new Hero('Pablocrack', 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero(String pname, String ppower)
      : name = pname,
        power = ppower;



  @override
  String toString() {
    return '$name - $power';
  }
}
