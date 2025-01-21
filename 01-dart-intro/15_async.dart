void main() {
  emitnumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitnumbers() async* {
  final valuestoemit = [1, 2, 3, 4, 5];

  for (int i in valuestoemit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
