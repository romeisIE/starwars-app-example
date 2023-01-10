import 'package:flutter/material.dart';

class StarWarsCharacterListItem extends StatelessWidget {

  final String name;
  final String homeworld;

  const StarWarsCharacterListItem(this.name, this.homeworld, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(name),
            subtitle: Text("From the homeplanet: $homeworld"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('DETAILS'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

}