import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // Pantalla de inicio
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi App'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),  // Ícono en la AppBar
            onPressed: () {
              // Acción al presionar el ícono
              print('Ícono de la AppBar presionado');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el ícono flotante
          print('Ícono flotante presionado');
        },
        child: Icon(Icons.add),  // Ícono flotante
        backgroundColor: Colors.blue,  // Color de fondo del botón flotante
      ),
      body: Stack(
        fit: StackFit.expand,  // Para que la imagen ocupe toda la pantalla
        children: [
          // Imagen de fondo
          Image.asset(
            'assets/fondo.jpg',  // Cambia la ruta por la que corresponda
            fit: BoxFit.cover,  // Para que la imagen cubra toda la pantalla
          ),
          // Capa encima de la imagen con el mensaje y el nombre de la app
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a tu aplicacion de confianza',  // Mensaje de bienvenida
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  // Texto blanco sobre la imagen
                ),
              ),
              SizedBox(height: 20),  // Espacio
              Text(
                'InnovaApp',  // Nombre de la aplicación
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,  // Texto blanco
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
