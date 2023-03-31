import 'package:aula/constant/constants.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person_outline
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context,
                  Constants.ROUTE_LOGIN
              );
            },
          )
        ],
      ),
    );
  }
}