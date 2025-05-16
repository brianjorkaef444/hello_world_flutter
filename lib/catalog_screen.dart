
      import 'package:flutter/material.dart';
import 'movie_detail_screen.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final List<Map<String, dynamic>> movies = [
    {
      'title': 'Avengers: Endgame',
      'image': 'assets/endgame.jpg',
      'year': 2019,
      'director': 'Anthony y Joe Russo',
      'genre': 'Acción',
      'synopsis': 'Los Vengadores se enfrentan a Thanos en una batalla épica.'
    },
    {
      'title': 'Spider-Man: No Way Home',
      'image': 'assets/spiderman.jpg',
      'year': 2021,
      'director': 'Jon Watts',
      'genre': 'Acción',
      'synopsis': 'Peter Parker enfrenta consecuencias del multiverso.'
    },
    {
      'title': 'Titanic',
      'image': 'assets/titanic.jpg',
      'year': 1997,
      'director': 'James Cameron',
      'genre': 'Drama/Romance',
      'synopsis': 'Una historia de amor a bordo del trágico RMS Titanic.'
    },
    {
      'title': 'El Rey León',
      'image': 'assets/lionking.jpg',
      'year': 1994,
      'director': 'Roger Allers y Rob Minkoff',
      'genre': 'Animación',
      'synopsis': 'Simba, un joven león, debe reclamar su lugar como rey.'
    },
    {
      'title': 'Inception',
      'image': 'assets/inception.jpg',
      'year': 2010,
      'director': 'Christopher Nolan',
      'genre': 'Ciencia Ficción',
      'synopsis': 'Un ladrón entra en los sueños para robar secretos.'
    },
    {
      'title': 'Coco',
      'image': 'assets/coco.jpg',
      'year': 2017,
      'director': 'Lee Unkrich',
      'genre': 'Animación/Musical',
      'synopsis': 'Un niño viaja al mundo de los muertos para conocer su herencia familiar.'
    },
    {
      'title': 'Joker',
      'image': 'assets/joker.jpg',
      'year': 2019,
      'director': 'Todd Phillips',
      'genre': 'Drama/Psicológico',
      'synopsis': 'La transformación de Arthur Fleck en el icónico villano Joker.'
    },
    {
      'title': 'Forrest Gump',
      'image': 'assets/forrestgump.jpg',
      'year': 1994,
      'director': 'Robert Zemeckis',
      'genre': 'Drama',
      'synopsis': 'Un hombre con bajo coeficiente intelectual presencia hechos clave de la historia.'
    },
    {
      'title': 'Jurassic Park',
      'image': 'assets/jurassicpark.jpg',
      'year': 1993,
      'director': 'Steven Spielberg',
      'genre': 'Ciencia Ficción',
      'synopsis': 'Un parque con dinosaurios clonados se sale de control.'
    },
    {
      'title': 'Toy Story',
      'image': 'assets/toystory.jpg',
      'year': 1995,
      'director': 'John Lasseter',
      'genre': 'Animación',
      'synopsis': 'Los juguetes cobran vida cuando los humanos no están cerca.'
    },
    {
      'title': 'The Matrix',
      'image': 'assets/matrix.jpg',
      'year': 1999,
      'director': 'The Wachowskis',
      'genre': 'Ciencia Ficción',
      'synopsis': 'Un hacker descubre que la realidad es una simulación.'
    },
    {
      'title': 'Black Panther',
      'image': 'assets/blackpanther.jpg',
      'year': 2018,
      'director': 'Ryan Coogler',
      'genre': 'Acción',
      'synopsis': 'T\'Challa regresa a Wakanda para proteger su nación.'
    },
    {
      'title': 'La La Land',
      'image': 'assets/lalaland.jpg',
      'year': 2016,
      'director': 'Damien Chazelle',
      'genre': 'Musical/Romance',
      'synopsis': 'Un músico y una actriz luchan por cumplir sus sueños en Los Ángeles.'
    },
    {
      'title': 'El Padrino',
      'image': 'assets/godfather.jpg',
      'year': 1972,
      'director': 'Francis Ford Coppola',
      'genre': 'Drama/Crimen',
      'synopsis': 'La historia de una familia mafiosa en Estados Unidos.'
    },
    {
      'title': 'Frozen',
      'image': 'assets/frozen.jpg',
      'year': 2013,
      'director': 'Chris Buck y Jennifer Lee',
      'genre': 'Animación/Musical',
      'synopsis': 'Dos hermanas luchan por salvar su reino del invierno eterno.'
    },
    {
      'title': 'Harry Potter y la piedra filosofal',
      'image': 'assets/harrypotter1.jpg',
      'year': 2001,
      'director': 'Chris Columbus',
      'genre': 'Fantasía',
      'synopsis': 'Un niño descubre que es un mago y asiste a Hogwarts.'
    },
    {
      'title': 'Rápidos y Furiosos 7',
      'image': 'assets/fast7.jpg',
      'year': 2015,
      'director': 'James Wan',
      'genre': 'Acción',
      'synopsis': 'La familia se enfrenta a un nuevo enemigo buscando venganza.'
    },
    {
      'title': 'Encanto',
      'image': 'assets/encanto.jpg',
      'year': 2021,
      'director': 'Jared Bush',
      'genre': 'Animación/Fantasía',
      'synopsis': 'Una familia mágica colombiana y una chica que debe salvar su don.'
    },
    {
      'title': 'The Dark Knight',
      'image': 'assets/darkknight.jpg',
      'year': 2008,
      'director': 'Christopher Nolan',
      'genre': 'Acción',
      'synopsis': 'Batman se enfrenta al Joker en una lucha por el alma de Gotham.'
    },
    {
      'title': 'Shrek',
      'image': 'assets/shrek.jpg',
      'year': 2001,
      'director': 'Andrew Adamson',
      'genre': 'Animación/Comedia',
      'synopsis': 'Un ogro solitario emprende una misión para rescatar a una princesa.'
    },
  ];
    // Puedes seguir agregando más...

  String searchQuery = '';

  // Lista para almacenar películas favoritas
  List<Map<String, dynamic>> favoriteMovies = [];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredMovies = movies
        .where((movie) =>
            movie['title'].toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Catálogo de Películas'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Buscar películas...',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                final movie = filteredMovies[index];
                final isFavorite = favoriteMovies.contains(movie);
                return Card(
                  color: Colors.grey[850],
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Image.asset(movie['image'], width: 50),
                    title: Text(movie['title'],
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('${movie['genre']} - ${movie['year']}',
                        style: TextStyle(color: Colors.white70)),
                    trailing: IconButton(
                      icon: Icon(
                        isFavorite ? Icons.star : Icons.star_border,
                        color: isFavorite ? Colors.yellow : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (isFavorite) {
                            favoriteMovies.remove(movie);
                          } else {
                            favoriteMovies.add(movie);
                          }
                        });
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MovieDetailScreen(movie: movie),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
