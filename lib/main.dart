import 'package:flutter/material.dart';
import 'package:starwars/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars Charaktere',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const StarWarsListView(),
    );
  }
}
