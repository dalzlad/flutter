import 'package:flutter/material.dart';


class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  

  @override
  State<Calculadora> createState() => _CalculadoraState();
  
  
}

class _CalculadoraState extends State<Calculadora> {
    final numero1Controller = TextEditingController();
    final numero2Controller = TextEditingController();
    final resultadoController = TextEditingController();
    String dropdownValue = 'Prado';
    List<String> options = ['La Candelaria', 'Prado', 'Bostón', 'San Benito'];
    List<double> tarifas = [20000.00, 25000.00, 30000.00, 15000.00];
//https://www.flutterbeads.com/dropdown-in-flutter/#:~:text=In%20Flutter%2C%20a%20dropdown%20is,holds%20the%20currently%20selected%20item.

    int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Calculadora')
      ),
      body: Column(
        children:[
           TextField(
            controller: numero1Controller,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Número 1',
            ),
            ),
              TextField(
           // key:ObjectKey('numero2'),
            controller: numero2Controller,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Número 2',
            ),
            ),
          TextField(
           // key:ObjectKey('numero2'),
            controller: resultadoController,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Resultado',
            ),
            ),
           DropdownButton<String>(
          // Step 3.
          value: dropdownValue,
          // Step 4.
          items: <String>['La Candelaria', 'Prado', 'Bostón', 'San Benito']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 30),
              ),
            );
  }).toList(),
  
    // Step 5.
  onChanged: (String? newValue) {
    setState(() {
     dropdownValue = newValue!;
    //print(options.indexOf(newValue));
    //print(tarifas[options.indexOf(newValue)]);
    });
  },
),
const Text('Esto es una calculadora'),
           IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                resultado = int.parse(numero1Controller.text) +int.parse(numero2Controller.text);
                resultadoController.text = resultado.toString();
                },
              ),
        ]
      )
    );
  }
}