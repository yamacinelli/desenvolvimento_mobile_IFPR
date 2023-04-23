import 'package:aula/widget/appBar.dart';
import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(true, 'Inicio', context),
      bottomNavigationBar: BottomNavigationBarBookTracker(),
    );
  }
}
