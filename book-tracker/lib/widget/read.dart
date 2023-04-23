import 'package:flutter/material.dart';

import 'appBar.dart';

class Read extends StatelessWidget {
  const Read({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarBookTracker('Reading', context)
    );
  }
}