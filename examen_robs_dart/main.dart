import 'package:flutter/material.dart';
import 'bienvenida.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Variables para identificar los campos de texto
  static var txtLogin = TextEditingController();
  static var txtPass = TextEditingController();

  // Método para construir el conjunto de Widgets de la app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiformularios',
      theme: ThemeData.light(useMaterial3: true),
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiformularios'),
      ),
      body: Column(
        children: [
          // Imagen
          Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Image.asset(
                "img/usuario.png",
                width: 105,
              ),
            ),
          ),

          // Login
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Login",
                border: OutlineInputBorder(),
              ),
              controller: MyApp.txtLogin,
            ),
          ),

          // Aqui es el password (campo de txt)
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
              controller: MyApp.txtPass,
            ),
          ),

          // Button
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton.icon(
              icon: Icon(Icons.login),
              label: Text("Validar Usuario"),
              style: ElevatedButton.styleFrom(
              // Cambiar colores del botón
              primary: Colors.green,
              onPrimary: Colors.white,
    ),
              onPressed: () => _validarUsuario(context),
            ),
          )
        ],
      ),
    );
  }

  // Método para validar el usuario y contraseña
  void _validarUsuario(BuildContext context) {
    if (MyApp.txtLogin.text == "Robs" && MyApp.txtPass.text == "kakadevaca123") {
      // Si es correcto..
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bienvenida()),
      );
    } else {
      // mensaje de error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error!"),
            content: Text("El usuario o la contraseña son incorrectos"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Ok"),
              ),
            ],
          );
        },
      );
    }
  }
}