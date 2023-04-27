import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:aula/widget/home.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';

class Read extends StatelessWidget {
  const Read({super.key});

  Widget buildActualReading(MapEntry<String, String> map) {
    return Row(
      children: [
        Column(
          children: [
            Home().buildCard(map.value),   
          ],
        ),
        const Column(
          children: [
            Row(
              children: [
                Text('Titulo Livro', style: TextStyle(fontSize: 15)),
              ],
            ),
            Row(
              children: [
                Text('Capitulo: 10', style: TextStyle(fontSize: 12)),
              ],
            ),
            Row(
              children: [
                Text('Capitulo: 10', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Continue a história...',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Não deixe a história acabar ainda. Continue lendo seu último livro e mergulhe no mundo da literatura.',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: buildActualReading(const MapEntry('image', 'https://m.media-amazon.com/images/I/41MRn6hy8-L._SY344_BO1,204,203,200_QL70_ML2_.jpg')),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(false, true, 'Leituras', context),
      bottomNavigationBar: BottomNavigationBarBookTracker(bottomNavigationIndex: 1),
      body: buildBody(context),
    );
  }
}
