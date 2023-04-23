import 'package:flutter/material.dart';

import 'appBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarBookTracker(true, 'Favoritos', context)
    );
  }
}