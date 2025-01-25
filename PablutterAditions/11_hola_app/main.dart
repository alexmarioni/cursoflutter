import 'package:flutter/material.dart';

void main() {
  //En Flutter todo es un widget
  //incluso la app en sí
  runApp(MyApp());
}

//Un widget es un objeto y cada clase hereda de otra, 
//pudiendo la raíz ser StatelessWidget (interfaces inmutables) 
//o StatefulWidget (interfaces mutables).
class MyApp extends StatelessWidget {

  const MyApp({super.key});
  //Las keys ayudan a identificar widgets 
  //Click y Ctrl+. sobre MyApp para crearla automáticamente


  //En cada StatelessWidget debemos sobreescribir el método build 
  //que devuelve el widget.
  //Clic sobre MyApp y ctrl+. para hacerlo automáticamente
  @override
  Widget build(BuildContext context) {
    //BuildContext proporciona información sobre la posición de un widget 
    //en el árbol de widgets y se pasa a lo largo del mismo. 

    return const MaterialApp(
      //Retornamos el widget, esta será la aplicación
      //En este caso, nuestra app no va a cambiar una vez construída.
      //Hacerla const mejora el rendimiento al perimitr que Flutter 
      //reutilice el widget.

      
      //Ctrl+spacebar aparecen todas las propiedades del objeto
      debugShowCheckedModeBanner: false,
      //Esto saca la etiqueta de debug

      home: Scaffold(
        //Con esto el home de la app va a ser un scaffold, 
        //que implementa un diseño básico
        body: Center(
          child: Text('Qué ooondaa'),
        ),
        backgroundColor: Color.fromARGB(255, 255, 248, 248),
      ),

    );

  }

}
