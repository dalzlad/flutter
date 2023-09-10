import 'package:flutter/material.dart';

import 'custom_input_form.dart';
class InputsScreen extends StatelessWidget {
 
 const InputsScreen({Key? key}) : super(key: key);
 
 @override
 Widget build(BuildContext context) {

    //key del form para identificar el formulario
  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
  final Map<String, String> formValues = {
   'first_name': 'Diego',
   'last_name': 'López',
   'email': 'diegol720@gmail.com',
   'password': '1111',
   'role': 'Admin'
  };


  return Scaffold(
   appBar: AppBar(
    title: const Text('Input y Forms'),
   ),
   body: SingleChildScrollView(
    child: Padding(
     padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
     child: Form(
      key: myFormKey,
       child: Column(
        children: [
        const CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario',),
         const SizedBox( height: 30 ),
         const CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario',),
         const SizedBox( height: 30 ),
         const CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,),
         const SizedBox( height: 30 ),
         
         const CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,),
         const SizedBox( height: 30 ),
         ElevatedButton(
          onPressed:() {
           //Ocultar Teclado al tocar el botón
            FocusScope.of(context).requestFocus( FocusNode() );
            //validar el formulario
            if( !myFormKey.currentState!.validate() ){// !siempre habrá formulario 
             print('Formulario no válido');
             return;
            }
            //Imprimir valores del formulario
            print(formValues);
     
          }, 
          child: const SizedBox(
           width: double.infinity,
           child: Center(child: const Text('Guardar'))
           )
          )
     
        ],
     
       ),
     ),
    ),
   )
  );
 }
}


