import 'package:flutter/material.dart';
import 'marvel_screen.dart'; // Importa la pantalla de personajes
import 'auth_options_screen.dart'; // Importa la pantalla de opciones de autenticación

class ButacaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'La butaca',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Tres cintas en fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/cinta1.jpg', width: 80),
                Image.asset('assets/cinta2.jpg', width: 80),
                Image.asset('assets/cinta3.jpg', width: 80),
              ],
            ),

            SizedBox(height: 40),

            // Botón Ingresar
            ElevatedButton(
              onPressed: () {
                // Navegar a AuthOptionsScreen para mostrar opciones de login o registro
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthOptionsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text('Ingresa', style: TextStyle(fontSize: 18)),
            ),

            SizedBox(height: 20),

            // Botón Registrarse (también lleva a AuthOptionsScreen)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthOptionsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text('Regístrate', style: TextStyle(fontSize: 18)),
            ),

            SizedBox(height: 30),

            // Botón extra para ver personajes (opcional)
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MarvelScreen()),
                );
              },
              child: Text(
                'Ver personajes Marvel (prueba de API)',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
