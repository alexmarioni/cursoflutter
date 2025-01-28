import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
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
        title: const Text('Counter Functions'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aplica el estilo común en ambos textos
            Text('$clickCounter',
                style: commonTextStyle.copyWith(fontSize: 100)),
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: commonTextStyle),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),

          const SizedBox(height: 20),
          
          FloatingActionButton(
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      )
      //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
