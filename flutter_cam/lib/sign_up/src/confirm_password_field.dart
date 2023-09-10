// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({
    required this.password,
    super.key,
  });

  final String? password;

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  bool _obscureText = true;

  // if the field is hidden behind the keyboard, you might need to do this
  // to get the TextInputAction.next to work
  // https://github.com/flutter/flutter/issues/113668#issuecomment-1283639077

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: _obscureText
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
      ),
      obscureText: _obscureText,
      // The validator receives the text that the user has entered
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please re-enter your password';
        }
        if (value != widget.password) {
          return 'The password you entered is different';
        }
        return null;
      },
      textInputAction: TextInputAction.done,
    );
  }
}
