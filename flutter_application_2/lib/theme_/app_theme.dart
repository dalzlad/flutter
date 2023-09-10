import 'package:flutter/material.dart';
class AppTheme{
 static const Color primary = Colors.green;
 static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //AppBar theme
    appBarTheme: const AppBarTheme(
     color: primary,
     elevation: 0 //Sin sombra
    ),
    
       inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle( color: primary ),
    enabledBorder: OutlineInputBorder(
     borderSide: BorderSide( color: primary ),
     borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    ),

    focusedBorder: OutlineInputBorder(
     borderSide: BorderSide( color: primary ),
     borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    ),

    border: OutlineInputBorder(
     borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    )
   )


   );
 static final ThemeData darkTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //AppBar theme
    appBarTheme: const AppBarTheme(
    color: primary,
    elevation: 0 //Sin sombra
    ),
    scaffoldBackgroundColor: Colors.black
 );
}
