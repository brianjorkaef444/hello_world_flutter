import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de Películas")),
      body: Stack(
        children: [
          // Fondo de la app (puedes poner una imagen aquí si lo deseas)
          Positioned.fill(
            child: Container(
              color: Colors.blueGrey[50],  // Color de fondo
            ),
          ),
          
          // Contenido principal
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 📌 Logo
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "🎬 Mi Aplicación de Películas", 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              
              // 🔘 Botones de navegación (usando Row para colocarlos horizontalmente)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Iniciar Sesión");
                    },
                    child: Text("Iniciar Sesión"),
                  ),
                  SizedBox(width: 10), // Espaciado entre botones
                  ElevatedButton(
                    onPressed: () {
                      print("Registrarse");
                    },
                    child: Text("Registrarse"),
                  ),
                ],
              ),
              
              // Botón "Explorar como Invitado" en una nueva fila (columna)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print("Explorar como Invitado");
                  },
                  child: Text("Explorar como Invitado"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
