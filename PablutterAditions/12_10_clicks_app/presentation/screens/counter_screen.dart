import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Define el estilo común para los textos
    const TextStyle commonTextStyle = TextStyle(
      fontSize: 30, // Cambia este valor si es necesario
      fontWeight: FontWeight.w100, // El peso más ligero predeterminado
      color: Color.fromARGB(255, 255, 255, 255), // Blanco
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aplica el estilo común en ambos textos
            Text('10', style: commonTextStyle.copyWith(fontSize: 100)),
            const Text('Clicks', style: commonTextStyle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción a realizar cuando se presiona el botón
        },
        child: const Icon(Icons.plus_one),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
