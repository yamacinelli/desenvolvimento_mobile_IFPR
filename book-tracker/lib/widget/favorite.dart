import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

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
      margin: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    'https://m.media-amazon.com/images/I/71Vkg7GfPFL._AC._SR360,460.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/81LRk6+p1HL._AC_UL320_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/71yJLhQekBL._AC_UL320_.jpg'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    'https://m.media-amazon.com/images/I/61hOp6UFvCL._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/41tpztfvPML._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/81FH6q0EqYS._AC_UY218_.jpg'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    'https://m.media-amazon.com/images/I/81PGQZ8qBlL._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/91IWJY6FvtL._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/91+1SUO3vUL._AC_UY218_.jpg'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    'https://m.media-amazon.com/images/I/818yNY0mMZL._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/912e4tLG3TL._AC_UY218_.jpg'),
                buildCard(
                    'https://m.media-amazon.com/images/I/91g9Dvtf+jL._AC_UY218_.jpg'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    'https://m.media-amazon.com/images/I/51tOqyxAPOS._AC_UY218_.jpg'),
                buildCard(
                    'https://images-na.ssl-images-amazon.com/images/I/51NnWmixkhL._AC_SX184_.jpg'),
                buildCard(
                    'https://images-na.ssl-images-amazon.com/images/I/51qcm3lKxPL._AC_SX184_.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(false, true, 'Favoritos', context),
      bottomNavigationBar:
          BottomNavigationBarBookTracker(bottomNavigationIndex: 3),
      body: buildBody(context),
    );
  }
}
