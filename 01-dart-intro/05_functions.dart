void main(){
  
  greetEveryone();
  
  print(greetEveryone());
  
  print('Suma: ${optionalnumbers(10)}');
}

String greetEveryone(){
  
  
  return 'Hello everyone!';
}

int addtwonumbers(int a, int b) => a + b;


int optionalnumbers(int a, [int b = 0]) {
    
  return a + b;
}
