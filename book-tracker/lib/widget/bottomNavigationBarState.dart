import 'package:aula/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarBookTracker extends StatelessWidget {

  int bottomNavigationIndex = 0;
  List pages = [
    Constants.ROUTE_HOME,
    Constants.ROUTE_READING,
    Constants.ROUTE_DISCOVER,
    Constants.ROUTE_FAVORITE,
    Constants.ROUTE_BUY,
  ];

  void changePage(context, index) {
    Navigator.pushNamed(context, pages[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: BottomNavigationBar(
          currentIndex: bottomNavigationIndex,
          // onClick change index
          onTap: (index) {
            changePage(context, index);
          },
          iconSize: 20,
          // Fixed label
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house),
                label: 'Home',
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.bookBookmark),
                label: 'Reading',
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.solidCompass),
                label: 'Discover',
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.solidHeart),
                label: 'Favorites',
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.bagShopping),
                label: 'Buy',
                backgroundColor: Colors.black38),
          ],
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
          // Remove shadow from BottomNavigationBar
          elevation: 0.0,
        ),
      ),
    );
  }
}
