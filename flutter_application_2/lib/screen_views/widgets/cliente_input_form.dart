import 'package:flutter/material.dart';

class ClienteInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  
  const ClienteInputField({
    super.key,
    this.hintText,
    this.labelText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      helperText: 'Sólo letras',
      counterText: '3 caracteres',
      prefixIcon: const Icon( Icons.verified_outlined ),
      suffixIcon: const Icon( Icons.accessibility_new_sharp ),
      icon: const Icon( Icons.assignment_ind_outlined),
        ),
      onChanged: (value) {
      //print('value: $value');
    },
    );
  }
}
