import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokemonScreen extends StatefulWidget {
  @override
  _PokemonScreenState createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  List<dynamic> pokemonList = [];

  @override
  void initState() {
    super.initState();
    fetchPokemonList();
  }

  Future<void> fetchPokemonList() async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=20');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        pokemonList = data['results'];
      });
    } else {
      print('Error al cargar los pokémon');
    }
  }

  String getPokemonImageUrl(String url) {
    final id = url.split('/')[url.split('/').length - 2];
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Pokémon')),
      body: pokemonList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                final pokemon = pokemonList[index];
                final imageUrl = getPokemonImageUrl(pokemon['url']);
                return Card(
                  child: ListTile(
                    leading: Image.network(imageUrl),
                    title: Text(pokemon['name'].toString().toUpperCase()),
                  ),
                );
              },
            ),
    );
  }
}
