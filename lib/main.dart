import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starwars/listview.dart';
import 'package:starwars/StarWarsCharacterDetailsView.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => StarWarsListView(),
    ),
    GoRoute(
      path: '/details/:id',
      builder: (context, state) => StarWarsCharacterDetailsView(state.params['id']),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Star Wars Charaktere',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routerConfig: _router,
    );
  }
}
