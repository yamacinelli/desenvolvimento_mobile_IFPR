import 'package:flutter/material.dart';
import 'package:init/segunda-tela.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SegundaTela()));
            },
            child: const Text(
              'Segunda Tela',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
