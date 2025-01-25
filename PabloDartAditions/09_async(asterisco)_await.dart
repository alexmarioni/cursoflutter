void main() {

  emitNumber()
    .listen( (int value) {
      
      print( 'Stream value: $value' );

    }); 
}


//Así como una función marcada como async debía devolver un future, 
//una función async* debe devolver un Stream 
Stream<int> emitNumber() async* {
  
  
  final valuesToEmit = [1,2,3,4,5];
  

  for( int i in valuesToEmit ) {


    await Future.delayed( const Duration(seconds: 1));
    
    //return i;
    //No podemos hacer un return simple en una función stream 
    //porque deben ser emisiones

    yield i;
    //yield va a cumplir esa función, 
    //hacer un return cada vez que corresponda
  }
  
}

