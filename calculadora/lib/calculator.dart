
import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculadora/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {

  final memory = new Memory();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: <Widget>[buildDisplay()]));
  }

  Widget buildDisplay() {
    return Expanded(
        flex: 1,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                      memory.result,
                      minFontSize: 20.0,
                      maxFontSize: 80.0,
                      maxLines: 1,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.none,
                          fontSize: 80.0,
                          color: Colors.white)))
            ],
          ),
        ));
  }

  Widget buildKeyboard(
      String label,
      {int flex = 1,
        Color textColor = Colors.white,
        Color background = Colors.black}) {
    return Expanded(
      flex: flex,
      child: CupertinoButton(
          color: background, child: Text(label, style: TextStyle(fontSize: 24)),
          onPressed: () {
            setState(() {
              memory.applyCommand(label);
            });
          }),
    );
  }
}
