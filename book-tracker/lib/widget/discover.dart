import 'package:flutter/material.dart';

import 'appBar.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarBookTracker('Discover', context)
    );
  }
}