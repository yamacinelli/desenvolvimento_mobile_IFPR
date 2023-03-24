import 'package:flutter/material.dart';
import 'package:init/quinta-tela.dart';

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quarta Tela'),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuintaTela()));
              },
              child: const Text(
                'Quinta Tela',
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
