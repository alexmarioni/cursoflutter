void main() {
  final String pokemon = 'Pablodown';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['pablodown/front.png', 'pablodown/back.png'];

  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = 1;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  final Map<int, dynamic> pokemons = {
    1: 'Grego',
    2: 200,
    3: true,
    4: 'fire',
    5: {
      1:'grego/front.png',
      2:'grego/back.png'}
  };

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);

  print('Back: ${pokemons[5][2]}');
}
