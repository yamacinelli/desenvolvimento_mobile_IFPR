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
      margin: const EdgeInsets.only(bottom: 10),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xffffb914),
        currentIndex: bottomNavigationIndex,
        // onClick change index
        onTap: (index) {
          changePage(context, index);
        },
        iconSize: 18,
        // Fixed label
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookBookmark), label: 'Leituras'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidCompass), label: 'Descobrir'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidHeart), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bagShopping), label: 'Comprar'),
        ],
        backgroundColor: Colors.transparent,
        // Remove shadow from BottomNavigationBar
        elevation: 0.0,
      ),
    );
  }
}
