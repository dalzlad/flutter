import 'package:flutter/material.dart';

class Ambientes extends StatefulWidget {
  const Ambientes({super.key});

  @override
  State<Ambientes> createState() => _AmbientesState();
}

class _AmbientesState extends State<Ambientes> {
  String dropdownValue = '801';
  List<String> opciones = ['801', '802', '803', '804', '805'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ambientes de Formación'),
      ),
      body: Container(
         padding:const EdgeInsets.all(5),
         child: Column(
                 children:[ DropdownButton<String>(
                  // Step 3.
                  value: dropdownValue,
                  // Step 4.
                  items: opciones
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 25),
                      ),
                    );
          }).toList(),

          onChanged: (String? newValue) {
            setState(() {
            dropdownValue = newValue!;
            if(dropdownValue == '801'){
              //print(dropdownValue);
            }
            });
          },
        ),
                 ]
         ),
      )
    );
  }
}