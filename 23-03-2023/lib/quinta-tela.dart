import 'package:flutter/material.dart';
import 'package:init/sexta-tela.dart';

class QuintaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quinta Tela'),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SextaTela()));
              },
              child: const Text(
                'Sexta Tela',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
