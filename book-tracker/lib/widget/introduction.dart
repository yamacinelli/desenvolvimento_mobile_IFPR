import 'package:aula/constant/constants.dart';
import 'package:aula/widget/appBar.dart';
import 'package:aula/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  Expanded buildTopPage(BuildContext context) {
    return Expanded(
      child: Container(),
    );
  }

  Expanded buildBottomPage(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(150)),
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 50, top: 40, right: 20),
                child: Text(
                  'Apresentando nosso novo aplicativo, projetado para ajudá-lo a rastrear e gerenciar facilmente seu progresso de leitura.',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 13, color: Colors.white70),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Text(
                  'Nunca mais perca o controle de seus livros!',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Começar agora',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const FaIcon(FontAwesomeIcons.angleRight),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTopPage(context),
          buildBottomPage(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookTracker(false, false, 'Introdução', context),
      body: buildBody(context),
    );
  }
}
