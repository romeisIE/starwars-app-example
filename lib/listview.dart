import 'package:flutter/material.dart';
import 'package:starwars/StarWarsCharacter.dart';
import 'package:starwars/StarWarsCharacterListItem.dart';
import 'package:starwars/StarWarsCharacterRepository.dart';

class StarWarsListView extends StatelessWidget {

  final StarWarsCharacterRepository _repository = StarWarsCharacterRepository();

  StarWarsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Wars"),
      ),
      body: FutureBuilder<List<StarWarsCharacter>>(
        future: _repository.getCharacters(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return ListView(
              padding: const EdgeInsets.all(8),
              children: snapshot.data?.map((e) => StarWarsCharacterListItem(e.name, e.homeworld)).toList() ?? const <Widget>[Text("Leere Liste")],
            );
          } else if(snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return const Center(child: CircularProgressIndicator());
        },
      )
    );
  }
}
