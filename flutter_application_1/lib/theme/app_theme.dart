
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Color.fromARGB(255, 46, 120, 49);
  static const Color secundary = Color.fromARGB(255, 211, 69, 3);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
  //color primario
  primaryColor: Colors.indigo,
  //AppBar theme
  appBarTheme: const AppBarTheme(
  color: primary,
  elevation: 100 //Sin sombra
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Color.fromARGB(255, 215, 7, 18))),
  
  inputDecorationTheme: const InputDecorationTheme(
  labelStyle: TextStyle(color: Colors.red),
  floatingLabelStyle: TextStyle( color: primary ),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide( color: secundary ),
  borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), 
  topRight: Radius.circular(10)),
  ),
  )
  
 );


 static final ThemeData darkTheme = ThemeData.light().copyWith(
  //color primario
  primaryColor: Color.fromARGB(255, 18, 18, 18),
  //AppBar theme
  appBarTheme: const AppBarTheme(
  color: primary,
  elevation: 100 //Sin sombra
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Color.fromARGB(255, 87, 7, 215))),
  
  inputDecorationTheme: const InputDecorationTheme(
  labelStyle: TextStyle(color: Colors.blue),
  floatingLabelStyle: TextStyle( color: primary ),
  
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide( color: secundary ),
    borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5), 
      topRight: Radius.circular(1)
    ),


    
  ),
  )
  
 );

}