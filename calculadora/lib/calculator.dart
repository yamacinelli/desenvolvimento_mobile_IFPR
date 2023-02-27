import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculadora/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  final memory = Memory();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: <Widget>[buildDisplay(), buildKeyboard()]));
  }

  Widget buildDisplay() {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.black,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText('memory.result',
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

  Widget buildKeyboardButton(String label,
      {int flex = 1,
      Color textColor = Colors.white,
      Color backgroundColor = Colors.white12}) {
    return Expanded(
        flex: flex,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: textColor,
                  backgroundColor: backgroundColor,
                  shape: const CircleBorder()),
              child: Text(label, style: const TextStyle(fontSize: 30)),
              onPressed: () {
                setState(() {
                  memory.applyCommand(label);
                });
              }),
        ));
  }

  Widget buildKeyboardButtonZero(String label,
      {int flex = 2,
        Color textColor = Colors.white,
        Color backgroundColor = Colors.white12}) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
                  foregroundColor: textColor,
                  backgroundColor: backgroundColor,
                  shape: const StadiumBorder()),
              child: Text(label, style: const TextStyle(fontSize: 30)),
          onPressed: () {
            setState(() {
              memory.applyCommand(label);
            });
          }),
      )
    );
  }

  Widget buildKeyboard() {
    return Container(
        color: Colors.black,
        height: 450.0,
        child: Column(children: <Widget>[
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKeyboardButton('AC', backgroundColor: Colors.white54),
                  buildKeyboardButton('DEL', backgroundColor: Colors.white54),
                  buildKeyboardButton('%', backgroundColor: Colors.white54),
                  buildKeyboardButton('÷', backgroundColor: Colors.teal),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKeyboardButton('7'),
                    buildKeyboardButton('8'),
                    buildKeyboardButton('9'),
                    buildKeyboardButton('x', backgroundColor: Colors.teal),
                  ])),
          Expanded(
              flex: 1,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKeyboardButton('4'),
                    buildKeyboardButton('5'),
                    buildKeyboardButton('6'),
                    buildKeyboardButton('-', backgroundColor: Colors.teal),
                  ])),
          Expanded(
              flex: 1,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKeyboardButton('1'),
                    buildKeyboardButton('2'),
                    buildKeyboardButton('3'),
                    buildKeyboardButton('+', backgroundColor: Colors.teal),
                  ])),
          Expanded(
              flex: 1,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKeyboardButtonZero('0'),
                    buildKeyboardButton('.'),
                    buildKeyboardButton('=', backgroundColor: Colors.teal),
                  ]))
        ]));
  }
}
