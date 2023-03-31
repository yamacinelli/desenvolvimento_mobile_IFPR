import 'package:aula/widget/home.dart';
import 'package:aula/widget/introduction.dart';
import 'package:aula/widget/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: {
        '/': (context) => Introduction(),
        'login': (context) => Login(),
        'home': (context) => Home(),
      },
    );
  }
}