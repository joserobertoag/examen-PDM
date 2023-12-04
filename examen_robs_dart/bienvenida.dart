import 'package:flutter/material.dart';

void main() => runApp(const Bienvenida());

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(), 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Usuario Correcto'),
        ),
        body: const Center(
          child: Text('BIENVENID@!!!'),
        ),
      ),
    );
  }
}
