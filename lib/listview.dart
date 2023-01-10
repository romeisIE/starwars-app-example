import 'package:flutter/material.dart';
import 'package:starwars/StarWarsCharacterListItem.dart';

class StarWarsListView extends StatelessWidget {
  const StarWarsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Wars"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: const <Widget>[
          StarWarsCharacterListItem("Luke Skywalker", "Tatooine"),
          StarWarsCharacterListItem("Darth Vader", "Tatooine"),
          StarWarsCharacterListItem("Leia Organa", "Alderaan"),
          StarWarsCharacterListItem("Obi-Wan Kenobi", "Stewjon"),
        ],
      ),
    );
  }
}
