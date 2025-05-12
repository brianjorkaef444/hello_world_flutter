import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';

class MarvelScreen extends StatefulWidget {
  @override
  _MarvelScreenState createState() => _MarvelScreenState();
}

class _MarvelScreenState extends State<MarvelScreen> {
  List<dynamic> characters = [];
  bool isLoading = true;

  final String publicKey = '490787f9352c932531f63cb3015c1114';
  final String privateKey = 'd001723da41607e6cc06ad9b5e66981c1874cfe6';

  @override
  void initState() {
    super.initState();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    final ts = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = md5.convert(utf8.encode(ts + privateKey + publicKey)).toString();

    final url =
        'https://gateway.marvel.com/v1/public/characters?ts=$ts&apikey=$publicKey&hash=$hash';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print(data);
        
        setState(() {
          characters = data['data']['results'];
          isLoading = false;
        });
      } else {
        print('Error al cargar personajes: ${response.statusCode}');
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error de red o formato: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes de Marvel'),
        backgroundColor: Colors.red,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                final character = characters[index];
                final name = character['name'];
                final thumbnail = character['thumbnail'];
                final imageUrl = '${thumbnail['path'].replaceFirst('http', 'https')}.${thumbnail['extension']}';


                return Card(
                  child: ListTile(
                    leading: Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                    title: Text(name),
                  ),
                );
              },
            ),
    );
  }
}


