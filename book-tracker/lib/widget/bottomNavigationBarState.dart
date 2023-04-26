import 'package:aula/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavigationBarBookTracker extends StatelessWidget {
  BottomNavigationBarBookTracker({super.key, required this.bottomNavigationIndex});

  int bottomNavigationIndex;

  List pages = [
    Constants.ROUTE_HOME,
    Constants.ROUTE_READING,
    Constants.ROUTE_DISCOVER,
    Constants.ROUTE_FAVORITE,
    Constants.ROUTE_BUY,
  ];

  void changePage(context, index) {
    Navigator.pushReplacementNamed(context, pages[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
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
                icon: Icon(Ionicons.home_outline), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.book_outline), label: 'Leituras'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.compass_outline), label: 'Descobrir'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark_outline), label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bag_outline), label: 'Comprar'),
          ],
          backgroundColor: Theme.of(context).colorScheme.background,
          // Remove shadow from BottomNavigationBar
          elevation: 0.0,
        ),
      ),
    );
  }
}
