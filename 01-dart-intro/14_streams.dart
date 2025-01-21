void main() {
  emitnumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitnumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
