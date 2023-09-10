import 'package:flutter/material.dart';

class InstructorInputForm extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final bool obscureText;

  const InstructorInputForm({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    autofocus: true,
    initialValue: '',
    textCapitalization: TextCapitalization.words,
    keyboardType: TextInputType.phone,
    obscureText: obscureText,
    
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
    suffixIcon: const Icon( Icons.accessibility_new_sharp ),
    icon: const Icon( Icons.account_tree_outlined),
      ),
    );
  }
}