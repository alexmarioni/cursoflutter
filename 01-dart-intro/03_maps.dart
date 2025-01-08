void main() {
  

  final Map<int, dynamic> pokemons = {
    1: 'Grego',
    2: 200,
    3: true,
    4: 'fire',
    5: {
      1:'grego/front.png',
      2:'grego/back.png'}
  };



  print('Back: ${pokemons[5][2]}');
}
