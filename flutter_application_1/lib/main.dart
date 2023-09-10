import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/calculadora.dart';
import 'package:flutter_application_1/screen_views/cliente_form.dart';
import 'package:flutter_application_1/screen_views/dropDown.dart';
import 'package:flutter_application_1/screen_views/home_screen.dart';
import 'package:flutter_application_1/screen_views/inputForm.dart';
import 'package:flutter_application_1/screen_views/instructor_form.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InstructorForm(),
      theme: AppTheme.darkTheme,      
    );
  }
}