import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final TextInputType? keyboardType; //Contraseña


  const CustomInputField({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.obscureText = false,
    this.keyboardType //Contraseña

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     autofocus: true,
     initialValue: '',
     textCapitalization: TextCapitalization.words,
     keyboardType: keyboardType,
     obscureText: obscureText,

     onChanged: (value) {
      //print('value: $value');
     },
        validator:(value) {
    if ( value == null ) return 'Este campo es requerido';
    return value.length < 3 ? 'Mínimo de 3 letras' : null;
   },
      autovalidateMode: AutovalidateMode.onUserInteraction,
   decoration: InputDecoration(
    hintText: hintText,
    labelText: labelText,
    helperText: 'Sólo letras',
    counterText: '3 caracteres',
    prefixIcon: const Icon( Icons.verified_outlined ),
    suffixIcon: const Icon( Icons.group_outlined ),
    icon: const Icon( Icons.assignment_ind_outlined),
   ),
    );
  }

}