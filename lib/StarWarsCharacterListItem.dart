import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starwars/StarWarsCharacter.dart';

class StarWarsCharacterListItem extends StatelessWidget {

  final StarWarsCharacter character;

  const StarWarsCharacterListItem(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(character.name),
            subtitle: Text("From the homeplanet: ${character.homeworld}"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('DETAILS'),
                onPressed: () {
                  context.push("/details/${character.selfUrl}");
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

}