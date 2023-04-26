import 'package:aula/widget/appBar.dart';
import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget buildCard(String url) {
    return SizedBox(
      width: 90,
      height: 130,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(url, fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Olá Yago',
            style: TextStyle(fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Recomendações',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCard('https://m.media-amazon.com/images/I/51bRkcp1sLL.jpg'),
                  buildCard('https://m.media-amazon.com/images/I/51xJXGttg8L._SX355_BO1,204,203,200_.jpg'),
                  buildCard('https://m.media-amazon.com/images/I/51sz0nn7u9L._SX331_BO1,204,203,200_.jpg'),
                  buildCard('https://m.media-amazon.com/images/P/B07S5FDTVK.01._SCLZZZZZZZ_SX500_.jpg'),
                  buildCard('https://m.media-amazon.com/images/I/51agJBMZyQL._SX328_BO1,204,203,200_.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(false, true, 'Inicio', context),
      bottomNavigationBar:
          BottomNavigationBarBookTracker(bottomNavigationIndex: 0),
      body: buildBody(context),
    );
  }
}
