import 'StarWarsCharacter.dart';

class StarWarsCharacterRepository {
  Future<List<StarWarsCharacter>> getCharacters() {
    return Future.delayed(const Duration(seconds: 3), () => [
      StarWarsCharacter("Luke Skywalker", 100, 100, "11CC", "Tatooine", "https://swapi.dev/api/people/1/"),
      StarWarsCharacter("Darth Vader", 100, 100, "11CC", "Tatooine", "https://swapi.dev/api/people/4/"),
      StarWarsCharacter("Leia Organa", 100, 100, "11CC", "Alderaan", "https://swapi.dev/api/people/5/"),
      StarWarsCharacter("Obi-Wan Kenobi", 100, 100, "11CC", "Stewjon", "https://swapi.dev/api/people/20/"),
    ]);
  }
}