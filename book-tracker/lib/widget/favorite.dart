import 'package:aula/widget/bottomNavigationBarState.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'appBar.dart';

class Favorite extends StatelessWidget {

  List<MapEntry<String, String>> favorites = const [
    MapEntry('image', 'https://m.media-amazon.com/images/I/71Vkg7GfPFL._AC._SR360,460.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/81LRk6+p1HL._AC_UL320_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/71yJLhQekBL._AC_UL320_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/61hOp6UFvCL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/41tpztfvPML._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/81FH6q0EqYS._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/81PGQZ8qBlL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/91IWJY6FvtL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/91+1SUO3vUL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/818yNY0mMZL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/912e4tLG3TL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/91g9Dvtf+jL._AC_UY218_.jpg'),
    MapEntry('image', 'https://m.media-amazon.com/images/I/51tOqyxAPOS._AC_UY218_.jpg'),
    MapEntry('image', 'https://images-na.ssl-images-amazon.com/images/I/51NnWmixkhL._AC_SX184_.jpg'),
    MapEntry('image', 'https://images-na.ssl-images-amazon.com/images/I/51qcm3lKxPL._AC_SX184_.jpg'),
  ];

  Widget buildCard(MapEntry<String, String> map) {
    return SizedBox(
      width: 90,
      height: 130,
      child: Card(
        elevation: 5.0,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              child: Image.network(map.value, fit: BoxFit.fill),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: FloatingActionButton(
                  heroTag: 'btn${favorites.indexOf(map)}',
                  onPressed: () {
                    // TODO - Remove item of list Favorites
                  },
                  backgroundColor: const Color(0xfff1eee3),
                  child: const Icon(Ionicons.bookmark_outline, size: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(favorites.elementAt(0)),
                buildCard(favorites.elementAt(1)),
                buildCard(favorites.elementAt(2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(favorites.elementAt(3)),
                buildCard(favorites.elementAt(4)),
                buildCard(favorites.elementAt(5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(favorites.elementAt(6)),
                buildCard(favorites.elementAt(7)),
                buildCard(favorites.elementAt(8)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(favorites.elementAt(9)),
                buildCard(favorites.elementAt(10)),
                buildCard(favorites.elementAt(11)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCard(favorites.elementAt(12)),
                buildCard(favorites.elementAt(13)),
                buildCard(favorites.elementAt(14)),
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
