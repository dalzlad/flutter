import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen_views/widgets/instructor_input_form.dart';

class InstructorForm extends StatelessWidget {
  
  const InstructorForm({super.key});

  @override
  Widget build(BuildContext context) {
  final GlobalKey<FormState> intructorForm = GlobalKey<FormState>();
  
  final Map<String, String> formValues = {
 'documento': '1334',
'last_name': 'López',
'email': 'diegol720@gmail.com',
'password': '1111',
'role': 'Admin'
};


    return Scaffold(
      appBar: AppBar(
        title:const Text('Instructor')
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            
            child:Form(
              key:intructorForm,
              child: Column(children:  [
                  InstructorInputForm(hintText: 'Documento', labelText: 'Digite el Documento',
                  obscureText: true, formProperty: 'documento', formValues: formValues),
                  InstructorInputForm(hintText: 'Nombres', labelText: 'Digite el apellido',
                  formProperty: 'password', formValues: formValues
                  ),
            
                       ElevatedButton(onPressed: () {
                        
                         if( !intructorForm.currentState!.validate() ){// !siempre habrá formulario 
                              print('formulario no valido');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ('Formulario no válido');
                              return;
                          }
                           //Imprimir valores del formulario
                          print(formValues);

                     }, child: const Text('Guardar')
                    ),
                    ]
              ),
            )

        ),
      ),
    );
  }
}

