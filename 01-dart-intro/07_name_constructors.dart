void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);

   print(ironman);

}

class Hero {
  String? name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  
  Hero.fromJson(Map<String, dynamic> json):
  name=json['name'] ?? 'No name founded',
  power=json['power'] ?? 'No power founded',
  isAlive=json['isAlive'] ?? 'No life founded';

  @override
  String toString() {
    return '''        Nombre     - Poder - Condición de vida
        $name,  $power,         ${isAlive ? 'vivo' : 'muertazo'}''';
  }
}
