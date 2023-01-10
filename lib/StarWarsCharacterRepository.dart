import 'dart:developer';

import 'StarWarsCharacter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StarWarsCharacterRepository {
  Future<List<StarWarsCharacter>> getCharacters() async {
    log("Retrieving star wars character data");
    var url = Uri.https('swapi.dev', '/api/people');
    final body = await http.read(url);
    final json = jsonDecode(body) as Map<String,dynamic>;

    final list = (json['results'] as List<dynamic>).map((e) => StarWarsCharacter.fromJson(e),).toList(growable: false);

    return Future.value(list);
  }
}