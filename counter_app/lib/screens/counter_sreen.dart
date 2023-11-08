
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void incrementar(){
    counter++;
    setState(() {
    });
  }

  void decrementar (){
    counter--;
    setState(() {
    });
  }

    void resetToCero (){
    counter=0;;
    setState(() {
    });
  }

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
      floatingActionButton: CustomFloatButtoms(
        incrementar: incrementar,
        decrementar: decrementar,
        resetToCero: resetToCero,
      ),
    );
  }
}

class CustomFloatButtoms extends StatelessWidget {

  final Function incrementar;
  final Function decrementar;
  final Function resetToCero;
  const CustomFloatButtoms({
    super.key, required this.incrementar, required this.decrementar, required this.resetToCero,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: ()=> incrementar()),
   
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: ()=> resetToCero()),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: ()=>decrementar())
      ],
    );
  }
}