import 'package:aula/constant/constants.dart';
import 'package:aula/widget/home.dart';
import 'package:flutter/material.dart';

class BotttomNavigationBarState extends State<Home> {

  int bottomNavigationIndex = 0;
  List pages = [
    Constants.ROUTE_HOME,
    Constants.ROUTE_FAVORITE,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: BottomNavigationBar(
            currentIndex: bottomNavigationIndex,
            // onClick change index
            onTap: (index) {
              setState(() {
                changePage(context, index);
              });
            },
            iconSize: 20,
            // Fixed label
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_sharp),
                  label: 'Favorites',
                  backgroundColor: Colors.black38),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_sharp),
                  label: 'Account',
                  backgroundColor: Colors.black38),
            ],
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            // Remove shadow from BottomNavigationBar
            elevation: 0.0,
          ),
        ),
      ),
    );
  }

  void changePage(context, index) {
    Navigator.pushNamed(context, pages[index]);
  }
}
