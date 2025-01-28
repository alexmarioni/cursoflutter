import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // Define el estilo común para los textos
    const TextStyle commonTextStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w100,
      color: Color.fromARGB(255, 0, 0, 0),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aplica el estilo común en ambos textos
            Text('$clickCounter',
                style: commonTextStyle.copyWith(fontSize: 100)),
            Text('Click${clickCounter == 1 ? '':'s'}',  style: commonTextStyle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
      //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
