import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 61, 234),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home', style: TextStyle(color:Colors.red))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
                     const Text('Número de clicks:', style:TextStyle(fontSize:20 )),
                     Text('$contador', style:const TextStyle(fontSize:25 ))],
                 ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print('$contador');
          setState(() {
          });
        }),
    );
  }
}




//Satiago Hernandez
//Mateo calle