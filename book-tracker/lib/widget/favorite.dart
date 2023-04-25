import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(false, true, 'Favoritos', context),
      bottomNavigationBar:
          BottomNavigationBarBookTracker(bottomNavigationIndex: 3),
    );
  }
}
