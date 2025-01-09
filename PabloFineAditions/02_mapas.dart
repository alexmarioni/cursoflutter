void main() {
  final pokemon = {
    'Name': 'Ditto',
    'hp': 100,
    3: true,
    3.5: <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };
  final Map<int, dynamic> pokemones = {
    1: 'hola',
    2: 45,
    3: false,
    4: {1: false, 2: true, 3: true}
  };

  print(pokemon);
  print('Name: ${pokemon['Name']}');
  print('Name: ${pokemones[4][2]}');
  if (pokemones[4][2]) 
    print("Jajaajajaja");
}
