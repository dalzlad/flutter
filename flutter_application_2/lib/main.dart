import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//https://frontendhbs.onrender.com/
Future<Usuario> actualizarUsuario(String nombre, String email, String password, String rol, String estado) async {
  final response = await http.put(
    Uri.parse('https://backendapi-2t9z.onrender.com/api/usuarios'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'nombre': nombre,
      'email': email,
      'password': password,
      'rol': rol, 
      'estado': estado
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Usuario.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
     //then throw an exception.
    throw Exception(response.body);
  }
}

class Usuario {
  final int id;
  final String nombre;
  final String email;
  final String password;
  final String rol;
  final bool estado;

  const Usuario({required this.id, required this.nombre, required this.email, required this.password, required this.rol, required this.estado});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      email: json['email'],
      password: json['password'],
      rol: json['rol'],
      estado: json['estado']
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _rol = TextEditingController();
  final TextEditingController _estado = TextEditingController();
  Future<Usuario>? _futureUsuario;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crear Usuario',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: (_futureUsuario == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _nombre,
          decoration: const InputDecoration(hintText: 'Digita el Nombre'),
        ),
         TextField(
          controller: _email,
          decoration: const InputDecoration(hintText: 'Digita el Email'),
        ),
        TextField(
          controller: _password,
          decoration: const InputDecoration(hintText: 'Digita la Contraseña'),
        ),
        TextField(
          controller: _rol,
          decoration: const InputDecoration(hintText: 'Digita el Rol'),
        ),
          TextField(
          controller: _estado,
          decoration: const InputDecoration(hintText: 'Digita el Estado'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureUsuario = actualizarUsuario(_nombre.text,_email.text, _password.text, _rol.text, _estado.text);
            });
          },
          child: const Text('Actualizar'),
        ),
      ],
    );
  }

  FutureBuilder<Usuario> buildFutureBuilder() {
    return FutureBuilder<Usuario>(
      future: _futureUsuario,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.nombre);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}