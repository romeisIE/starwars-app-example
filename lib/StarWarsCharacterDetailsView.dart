import 'package:flutter/material.dart';
import 'package:starwars/StarWarsCharacterRepository.dart';
import 'package:starwars/StarWarsCharacter.dart';

class StarWarsCharacterDetailsView extends StatelessWidget {
  final String? _id;
  final StarWarsCharacterRepository _repository = StarWarsCharacterRepository();

  StarWarsCharacterDetailsView(this._id, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Wars Character"),
      ),
      body: (_id == null)
          ? const Text("Ungültige Charakter Id übergeben")
          : FutureBuilder<StarWarsCharacter>(
              future: _repository.getCharacter(_id!),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data != null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      snapshot.data!.name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text("Height: ${snapshot.data!.height}cm"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text("Homeplanet URL: ${snapshot.data!.homeworld}"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Text(
                        "Charakter mit der ID $_id konnte nicht gefunden werden");
                  }
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }

                return Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Lade Charakterdaten..."),
                      )
                    ],
                  ),
                ));
              },
            ),
    );
  }
}
