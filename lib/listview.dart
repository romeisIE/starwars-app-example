import 'package:flutter/material.dart';

class StarWarsListView extends StatelessWidget {
  const StarWarsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Wars"),
      ),
      body: const Center(
        child: Text("Implement the starwars api"),
      ),
    );
  }
}
