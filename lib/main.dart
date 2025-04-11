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
          
          print('Ícono flotante presionado');
        },
        child: Icon(Icons.add),  
        backgroundColor: Colors.blue,  
      ),
      body: Stack(
        fit: StackFit.expand,  
        children: [
        
          Image.asset(
            'assets/fondo.jpg',  
            fit: BoxFit.cover,  
          ),
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a tu aplicacion de confianza',  
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  
                ),
              ),
              SizedBox(height: 20),  
              Text(
                'InnovaApp',  
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,  
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
