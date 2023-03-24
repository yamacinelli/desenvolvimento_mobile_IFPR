import 'package:flutter/material.dart';
import 'package:init/quarta-tela.dart';

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Tela'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuartaTela()));
            },
            child: const Text(
              'Quarta Tela',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
