import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/widgets/instructor_input_form.dart';

class InstructorForm extends StatelessWidget {
  const InstructorForm({super.key});

  @override
  Widget build(BuildContext context) {
  final GlobalKey<FormState> intructorForm = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title:const Text('Instructor')
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            
            child:Form(
              key:intructorForm,
              child: Column(children:  [
                  const InstructorInputForm(hintText: 'Documento', labelText: 'Digite el Documento',
                  obscureText: true,),
                  const InstructorInputForm(hintText: 'Nombres', labelText: 'Digite el apellido'),
            
                       ElevatedButton(onPressed: () {
                      
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

