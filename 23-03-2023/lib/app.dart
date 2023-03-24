import 'package:flutter/material.dart';
import 'package:init/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aula Base 2',
      home: Home(),
    );
  }
}
