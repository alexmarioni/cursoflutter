void main() {
  final MySquare = Square(side: -1);
  
  print('area: ${MySquare.area}');
}

class Square {
  double _side;

  Square({required double side}) : assert(side > 0, 'Side must be >=0'), _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    _side = value;
  }

  double calculatearea() {
    return _side * _side;
  }
}
