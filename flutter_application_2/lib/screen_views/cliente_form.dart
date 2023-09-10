import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen_views/widgets/cliente_input_form.dart';

class ClienteForm extends StatelessWidget {
  const ClienteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(children:  const [
              ClienteInputField(hintText:'Documento', labelText:'Digite el Documento'),
              SizedBox(height:10),
              ClienteInputField(hintText:'Nombre', labelText:'Digite el Nombre de Prueba'),
              SizedBox(height:10),
              ClienteInputField(hintText:'Apelldos', labelText:'Digite los Apellidos'),
              SizedBox(height:10),
              ],)
        ),
      ),
    );
  }
}

