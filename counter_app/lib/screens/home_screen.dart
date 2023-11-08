import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Appbar"),
        backgroundColor: const Color.fromARGB(255, 70, 66, 54),
        elevation: 10.0,
      ),
      backgroundColor: Colors.amber,
      body:  const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Numero de clicks",style: TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic)),
              Text("10",style: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic)),
            ],
          ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: (){
            print("Sumando 1");
          }),
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: (){
            print("restando 1");
          })
        ],
      ),
    );
  }

}