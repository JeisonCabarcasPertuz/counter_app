import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        backgroundColor: const Color.fromARGB(255, 70, 66, 54),
        elevation: 10.0,
      ),
      backgroundColor: Colors.amber,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Numero de clicks",style: TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic)),
              Text('$counter',style: const TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic)),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: (){
            counter++;
            setState(() {
              
            });
            if (kDebugMode) {
              print("Sumando 1");
            }
          }),
   
          FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: (){
            counter=0;
            setState(() {
              
            });
            if (kDebugMode) {
              print("reset");
            }
          }),

          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: (){
            counter--;
            setState(() {
              
            });
            if (kDebugMode) {
              print("restando 1");
            }
          })
        ],
      ),
    );
  }
}